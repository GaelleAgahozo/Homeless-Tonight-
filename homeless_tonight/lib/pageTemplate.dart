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
          iconTheme: IconThemeData(color: Color(0xff73bfb8)),
          title: Image.asset('assets/images/logoTSC.png',
              fit: BoxFit.fitWidth, height: 60, width: 130),
          backgroundColor: Colors.white,
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
