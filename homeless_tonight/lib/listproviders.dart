import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:homeless_tonight/messageui.dart';
import 'package:homeless_tonight/message_class.dart';
import 'package:homeless_tonight/firebase_refs.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class ListProviders extends StatelessWidget {
  const ListProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<UnclaimedMessage>>(
      stream:
          unclaimedMessageRef.orderBy('time', descending: false).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final data = snapshot.requireData;

        return ListView.separated(
            itemCount: data.size,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                onTap: () {},
                title: Row(
                  children: [
                    Expanded(
                        child: Text(data.docs[index].data().userDisplayName)),
                    Expanded(child: Text(data.docs[index].data().need)),
                  ],
                ),
                subtitle: Text(data.docs[index].data().description),
                trailing: TextButton(
                  child: const Text("Claim"),
                  onPressed: () async {
                    List<CollectionReference<Message>> convoRef = getConvoRef(
                        data.docs[index].data().userAddress,
                        auth.currentUser!.uid);

                    Message firstMessage = Message(
                        serviceIsSender: false,
                        serviceAddress: auth.currentUser!.uid,
                        serviceDisplayName: auth.currentUser!.displayName!,
                        userAddress: data.docs[index].data().userAddress,
                        userDisplayName:
                            data.docs[index].data().userDisplayName,
                        content: data.docs[index].data().description,
                        time: data.docs[index].data().time);

                    convoRef[0].doc().set(firstMessage);

                    convoRef[1]
                        .doc(
                            "$data.docs[index].data().userAddress-$auth.currentUser!.uid")
                        .set(Message(
                            serviceIsSender: false,
                            serviceAddress: auth.currentUser!.uid,
                            serviceDisplayName: auth.currentUser!.displayName!,
                            userAddress: data.docs[index].data().userAddress,
                            userDisplayName:
                                data.docs[index].data().userDisplayName,
                            content: '',
                            time: data.docs[index].data().time));

                    FirebaseFirestore.instance.runTransaction(
                        (transaction) async =>
                            transaction.delete(data.docs[index].reference));

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatScreen(
                                userID: data.docs[index].data().userAddress,
                                serviceID: auth.currentUser!.uid)));
                  },
                ),
              ));
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider());
      },
    );
  }
}
