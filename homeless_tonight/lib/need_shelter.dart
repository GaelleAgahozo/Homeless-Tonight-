import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homeless_tonight/message_class.dart';
import 'package:homeless_tonight/page_template.dart';
import 'package:homeless_tonight/firebase_refs.dart';
import 'package:geolocator/geolocator.dart';

void getCurrentLocation() async {
  var position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  // currently unused
  // var lastPosition = await Geolocator.getLastKnownPosition();
  setState(() {
    locationMessage = "$position.latitude, $position.longitude";
  });
}

void setState(Null Function() param0) {}

final FirebaseAuth auth = FirebaseAuth.instance;
var locationMessage = "";

class Shelter extends StatelessWidget {
  const Shelter({super.key});

  @override
  Widget build(BuildContext context) {
    auth.signInAnonymously();
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
                "\nI am homeless\n in Conway and do not have \n a place to sleep tonight\n",
                style: TextStyle(fontSize: 22, color: Colors.white),
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
                  style: TextStyle(fontSize: 20, color: Colors.white),
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
            const Icon(
              Icons.location_on,
              size: 24.0,
              color: Colors.teal,
            ),
            const SizedBox(
              height: 10.0,
            ),
            // const Text(
            //   "Get User Location",
            //   style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(
              height: 20.0,
            ),
            Text(locationMessage),
            ElevatedButton(
                onPressed: () {
                  getCurrentLocation();
                },
                child: const Text(
                  'Get Current Location',
                  style: TextStyle(color: Colors.white),
                )),
            TextField(
              onChanged: (value) {
                shelterText = value;
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
                _handleNewItem(nameText, locationText, shelterText);
                Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ChatScreen()));
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

void _handleNewItem(String name, String location, String need) {
  nameController.clear();
  locationController.clear();
  shelterController.clear();

  auth.signInAnonymously();

  UnclaimedMessage newMessage = UnclaimedMessage(
      userAddress: auth.currentUser!.uid,
      userDisplayName: name,
      location: location,
      need: need,
      description: need,
      time: DateTime.now().millisecondsSinceEpoch.toString());

  unclaimedMessageRef.doc().set(newMessage);
}
