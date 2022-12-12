import 'package:flutter/material.dart';
import 'package:homeless_tonight/page_template.dart';
import 'package:homeless_tonight/resources_screen.dart';
import 'package:homeless_tonight/domesticviolence.dart';
import 'package:homeless_tonight/need_shelter.dart';

class HomelessMainScreen extends StatefulWidget {
  const HomelessMainScreen({super.key});

  @override
  State<HomelessMainScreen> createState() => _HomelessMainScreenState();
}

class _HomelessMainScreenState extends State<HomelessMainScreen> {
  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          // const Spacer(
          //   flex: 2,
          // ),
          ElevatedButton(
            onPressed: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Shelter())));
            }),
            child: SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                height: 100,
                child: const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Center(
                        child: Text("\n I need shelter tonight",
                            style: TextStyle(fontSize: 24, height: 1.1))))),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const DomesticViolenceScreen())));
              }),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                height: 100,
                child: const Center(
                    child: Text('Domestic Violence/\n Sex Trafficking',
                        style: TextStyle(fontSize: 24, height: 1.1),
                        textAlign: TextAlign.center)),
              )),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ResourcesScreen())));
              }),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                height: 100,
                child: const Center(
                    child: Text('Resources',
                        style: TextStyle(fontSize: 24, height: 1.1))),
              )),

          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/sign_in');
                  },
                  child: const Text("I am a Service Provider"))),
        ]));
  }
}
