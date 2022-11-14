import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:homeless_tonight/pageTemplate.dart';
import 'package:homeless_tonight/resources_screen.dart';

class Shelter extends StatelessWidget {
  const Shelter({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
        child: Column(children: [
      const Align(
        alignment: Alignment.center,
      ),
      Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 30),
          child: Card(
              color: Theme.of(context).colorScheme.surface,
              child: const Text(
                "\nI am a homeless\n in Conway and do not have \n a place to sleep tonight\n",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ))),
      Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SizedBox(
            width: 300,
            height: 100,
            child: ElevatedButton(
                onPressed: () {
                  _displayTextInputDialog(context);
                },
                child: const Text(
                  "Connect with a local \n homeless service \n provider",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                )),
          )),
    ]));
  }
}

final TextEditingController nameController = TextEditingController();
final TextEditingController locationController = TextEditingController();
final TextEditingController shelterController = TextEditingController();
final ButtonStyle yesStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.green);
final ButtonStyle noStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.red);
String nameText = '';
String locationText = '';
String shelterText = '';

Future<void> _displayTextInputDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('I am Homeless and Need Shelter'),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            TextField(
              onChanged: (value) {
                nameText = value;
              },
              controller: nameController,
              decoration: const InputDecoration(hintText: "Enter Your Name"),
            ),
            TextField(
              onChanged: (value) {
                locationText = value;
              },
              controller: locationController,
              decoration: const InputDecoration(
                  hintText: "Enter Your General Location"),
            ),
            TextField(
              onChanged: (value) {
                locationText = value;
              },
              controller: shelterController,
              decoration: const InputDecoration(
                  hintText: "Enter What Kind of Shelter You Need"),
            ),
          ]),
          actions: <Widget>[
            ElevatedButton(
              key: const Key("OKButton"),
              style: yesStyle,
              child: const Text('OK'),
              onPressed: () {
                _handleNewItem(nameText);
                _handleNewItem(locationText);
                _handleNewItem(shelterText);
                Navigator.pop(context);
              },
            ),

            // https://stackoverflow.com/questions/52468987/how-to-turn-disabled-button-into-enabled-button-depending-on-conditions
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: shelterController,
              builder: (context, value, child) {
                return ElevatedButton(
                  key: const Key("CancelButton"),
                  style: noStyle,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                );
              },
            ),
          ],
        );
      });
}

void _handleNewItem(String itemText) {
  nameController.clear();
  locationController.clear();
  shelterController.clear();
}
