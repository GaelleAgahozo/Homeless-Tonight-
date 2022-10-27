import 'package:flutter/material.dart';
import 'package:homeless_tonight/resources_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Homeless Services Home Page'),
    );
  }
}

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
                  onPressed: null,
                  child: Text(
                      "\n I am homeless in Conway \n and I do not have a place \n to sleep tonight \n",
                      style: TextStyle(fontSize: 24, height: 1.1))),
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                      onPressed: null,
                      child: Text(
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
                      // () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => ResourcesScreen()));
                      // },
                      child: Text("\n Resources \n",
                          style: TextStyle(fontSize: 24, height: 1.1))))
            ],
          ),
        ));
  }
}
