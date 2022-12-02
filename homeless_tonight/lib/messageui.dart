import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        //Expanded(child: widget),
        MessageBar(
          onSend: null,
        )
      ]),
    );
  }
}
