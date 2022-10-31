import 'package:flutter/material.dart';
import 'package:homeless_tonight/resources_screen.dart';
import 'package:homeless_tonight/domesticviolence.dart';
import 'package:homeless_tonight/need_shelter.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // primarySwatch: Colors.teal[200],
//         backgroundColor: Colors.teal[200],
//       ),
//       home: const MyHomePage(title: 'Homeless Services Home Page'),
//     );
//   }
// }

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
                  child: Text(
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
                                    builder: ((context) => ResourcesScreen(
                                          title: 'Resources',
                                        ))))
                          },
                      child: Text("\n Resources \n",
                          style: TextStyle(fontSize: 24, height: 1.1))))
            ],
          ),
        ));
  }
}
