import 'package:flutter/material.dart';
import 'package:homeless_tonight/homeless.dart';

class initialscreen extends StatelessWidget {
  const initialscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Column(children: [
              Text("Toad Suck", style: TextStyle(color: Colors.black)),
              Text(
                "COALITION",
                style: TextStyle(color: Colors.teal[200]),
              ),
              Text(
                'FAULKNER COUNTY, ARKANSAS',
                style: TextStyle(fontSize: 8, color: Colors.red[900]),
              )
            ]),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text("Homeless Tonight",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              SizedBox(
                height: 150,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.teal[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "Service Provider",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
              SizedBox(
                height: 60,
              ),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MyHomePage(
                                      title: 'Homeless Services Home ',
                                    ))))
                      },
                  // () => {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: ((context) => ResourcesScreen())))
                  //         },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.teal[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text("Need Service",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)))
            ],
          ),
        ));
  }
}
