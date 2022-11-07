import 'package:flutter/material.dart';
import 'package:homeless_tonight/resources_screen.dart';
import 'package:homeless_tonight/domesticviolence.dart';
import 'package:homeless_tonight/need_shelter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Shelter())))
                      },
                  child: const Text(
                      "\n I am homeless in Conway \n and I do not have a place \n to sleep tonight \n",
                      style: TextStyle(fontSize: 24, height: 1.1))),
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        DomesticViolenceScreen())))
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
                                    builder: ((context) => ResourcesScreen())))
                          },
                      child: const Text("\n Resources \n",
                          style: TextStyle(fontSize: 24, height: 1.1))))
            ],
          ),
        ));
  }
}
