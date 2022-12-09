import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homeless_tonight/message_class.dart';
import 'package:homeless_tonight/messageui.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class ListConversations extends StatelessWidget {
  const ListConversations({
    required this.isService,
    super.key,
  });

  final bool isService;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Message>>(
      stream: (isService)
          ? messageRef
              .where('serviceAddress', isEqualTo: auth.currentUser!.uid)
              .snapshots()
          : messageRef
              .where('userAddress', isEqualTo: auth.currentUser!.uid)
              .snapshots(),
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatScreen(
                              userID: data.docs[index].data().userAddress,
                              serviceID:
                                  data.docs[index].data().serviceAddress)));
                },
                title: Row(
                  children: [
                    Expanded(
                        child: Text(data.docs[index].data().userDisplayName)),
                  ],
                ),
                subtitle: Text(data.docs[index].data().content),
              ));
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider());
      },
    );
  }
}

final messageRef =
    FirebaseFirestore.instance.collection('messages').withConverter<Message>(
          fromFirestore: (snapshots, _) => Message.fromJson(snapshots.data()!),
          toFirestore: (message, _) => message.toJson(),
        );
