import 'package:flutter/material.dart';

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
                style: TextStyle(color: Colors.green[200]),
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
              Text("Homeless Tonight"),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Service Provider",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text("Need Service",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold)))
            ],
          ),
        ));
  }
}
