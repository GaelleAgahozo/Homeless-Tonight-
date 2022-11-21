import 'package:flutter/material.dart';

class HomelessTonightPage extends StatelessWidget {
  const HomelessTonightPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: (false)? // switches in the condition that there is a new message
                Stack(
                  children: <Widget>[
                    Icon(Icons.message),
                    Positioned(  // draw a red marble
                      top: -2.0,
                      right: -2.0,
                      child: new Icon(Icons.brightness_1, size: 12.0, 
                        color: Colors.redAccent),
                    )
                  ]
                ):
                const Icon(Icons.message),
              onPressed: () {},
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
          child: child,
        )
      ]),
    );
  }
}
