import 'package:flutter/material.dart';
import 'package:homeless_tonight/homeless.dart';
import 'package:homeless_tonight/pageTemplate.dart';

class initialscreen extends StatelessWidget {
  const initialscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
        child: Center(
      child: Column(
        children: [
          Spacer(),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Service Provider",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
          const SizedBox(
            height: 100,
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
              style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text("Need Service",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          const Spacer()
        ],
      ),
    ));
  }
}
