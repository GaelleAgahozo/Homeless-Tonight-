import 'package:flutter/material.dart';
import 'package:homeless_tonight/conversation_screen.dart';

class HomelessTonightPage extends StatefulWidget {
  HomelessTonightPage({super.key, required this.child});

  final Widget child;

  @override
  State<HomelessTonightPage> createState() => _HomelessTonightPageState();
}

class _HomelessTonightPageState extends State<HomelessTonightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          iconTheme: const IconThemeData(color: Color(0xff73bfb8)),
          centerTitle: true,
          title: Image.asset('assets/images/logoTSC.png',
              fit: BoxFit.fitWidth, height: 60, width: 130),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: (false)
                  ? // switches in the condition that there is a new message
                  Stack(children: <Widget>[
                      Icon(Icons.message),
                      Positioned(
                        // draw a red marble
                        top: 0.0,
                        right: 0.0,
                        child: new Icon(Icons.brightness_1,
                            size: 12.0, color: Colors.redAccent),
                      )
                    ])
                  : const Icon(Icons.message),
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              const UserConversationScreen())));
                });
              },
            )
          ],
        ),
      ),
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        const SizedBox(
          height: 60,
        ),
        Align(
          child: Text("Homeless Tonight",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Theme.of(context).colorScheme.secondary)),
        ),
        Expanded(
          child: widget.child,
        )
      ]),
    );
  }
}
