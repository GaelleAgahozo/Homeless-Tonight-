import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:homeless_tonight/listproviders.dart';
import 'package:homeless_tonight/message_class.dart';
import 'package:homeless_tonight/firebase_refs.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.userID, required this.serviceID});

  final String userID;
  final String serviceID;
  //late ListProviders pr;
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late String userDisplayName;
  late String serviceDisplayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            iconTheme: const IconThemeData(color: Color(0xff73bfb8)),
            centerTitle: true,
            title: Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logoTSC.png',
                  fit: BoxFit.fitWidth, height: 60, width: 130),
            ),
            backgroundColor: Colors.white,
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Expanded(
          child: StreamBuilder<QuerySnapshot<Message>>(
            stream: getConvoRef(widget.userID, widget.serviceID)
                .orderBy('time', descending: false)
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

              userDisplayName = data.docs[0].data().userDisplayName;
              serviceDisplayName = data.docs[0].data().serviceDisplayName;

              return ListView.builder(
                  itemCount: data.size,
                  itemBuilder: ((context, index) {
                    return BubbleSpecialThree(
                      text: data.docs[index].data().content,
                      tail: false,
                      isSender: (data.docs[index].data().serviceIsSender &&
                          data.docs[index].data().serviceAddress ==
                              auth.currentUser!.uid),
                    );
                  }));
            },
          ),
        ),
        MessageBar(
          onSend: ((message) {
            CollectionReference<Message> ref =
                getConvoRef(widget.userID, widget.serviceID);

            Message newMessage = Message(
              serviceIsSender: widget.serviceID == auth.currentUser!.uid,
              userAddress: widget.userID,
              userDisplayName: userDisplayName,
              serviceAddress: widget.serviceID,
              serviceDisplayName: serviceDisplayName,
              content: message,
              time: DateTime.now().millisecondsSinceEpoch.toString(),
            );

            ref.doc().set(newMessage);
          }),
        )
      ]),
    );
  }
}
