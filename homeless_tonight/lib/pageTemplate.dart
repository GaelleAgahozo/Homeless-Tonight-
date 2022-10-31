import 'package:flutter/material.dart';

class HomelessTonightPage extends StatelessWidget {
  const HomelessTonightPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.teal[200],
            centerTitle: true,
            title: Column(children: [
              Text("Toad Suck", style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
              Text(
                "COALITION",
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              Text(
                'FAULKNER COUNTY, ARKANSAS',
                style: TextStyle(fontSize: 8, color: Theme.of(context).colorScheme.tertiary),
              )
            ]),
          ),
        ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 60,),
          Align(
            child: Text("Homeless Tonight",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Theme.of(context).colorScheme.secondary)),
          ),
          Expanded(
            child: child,
          )
      ]),
    );
  }
}