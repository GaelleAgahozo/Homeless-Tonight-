import 'package:flutter/material.dart';
import 'package:homeless_tonight/pageTemplate.dart';
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
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Shelter())))
                  },
              child: const Text(
                  "\n I am homeless in Conway \n and I do not have a place \n to sleep tonight \n",
                  style: TextStyle(fontSize: 24, height: 1.1))),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const DomesticViolenceScreen())))
                      },
                  child: const Text(
                      "\n I am a victim of Domestic \n Violence/Sex Trafficking \n",
                      style: TextStyle(fontSize: 24, height: 1.1)))),
          Padding(
              padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const ResourcesScreen())))
                      },
                  child: const Text("\n Resources \n",
                      style: TextStyle(fontSize: 24, height: 1.1)))),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {},
                  child: const Text("I am a Service Provider")))
        ],
      ),
    ));
  }
}
