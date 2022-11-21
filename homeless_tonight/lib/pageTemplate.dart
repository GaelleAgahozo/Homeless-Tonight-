import 'package:flutter/material.dart';


class HomelessTonightPage extends StatefulWidget {
  HomelessTonightPage({super.key, required this.child});

  final Widget child;
  bool alertBadge = false;

  @override
  State<HomelessTonightPage> createState() => _HomelessTonightPageState();
}

class _HomelessTonightPageState extends State<HomelessTonightPage> {
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
              icon: (widget.alertBadge)? // switches in the condition that there is a new message
                Stack(
                  children: <Widget>[
                    Icon(Icons.message),
                    Positioned(  // draw a red marble
                      top: 0.0,
                      right: 0.0,
                      child: new Icon(Icons.brightness_1, size: 12.0, 
                        color: Colors.redAccent),
                    )
                  ]
                ):
                const Icon(Icons.message),
              onPressed: () {
                setState(() {
                  if (widget.alertBadge) {
                    widget.alertBadge = false;
                  } else {
                    widget.alertBadge = true;
                  }
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
