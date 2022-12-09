import 'package:flutter/material.dart';
import 'package:homeless_tonight/conversation_list.dart';

class UserConversationScreen extends StatefulWidget {
  const UserConversationScreen({super.key});

  @override
  State<UserConversationScreen> createState() => _UserConversationScreenState();
}

class _UserConversationScreenState extends State<UserConversationScreen> {
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
        ),
      ),
      body: const ListConversations(isService: false),
    );
  }
}
