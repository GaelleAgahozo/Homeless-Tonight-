import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homeless_tonight/firebase_refs.dart';
import 'package:homeless_tonight/page_template.dart';
import 'package:url_launcher/url_launcher.dart';

import 'message_class.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class DomesticViolenceScreen extends StatelessWidget {
  const DomesticViolenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Column(children: <Widget>[
        const Align(
          alignment: Alignment.center,
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Card(
                color: Theme.of(context).colorScheme.surface,
                child: const Text(
                    "\n I am a victim of Domestic \n Violence/Sex Trafficking \n",
                    style: TextStyle(
                        fontSize: 24, height: 1.1, color: Colors.white)))),
        const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 5),
            child: Text("24 Hour Crisis Line", style: TextStyle(fontSize: 22))),
        Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 30),
            child: TextButton(
                onPressed: () async {
                  launchUrl(Uri.parse('tel:18663582265'),
                      mode: LaunchMode.platformDefault);
                },
                child: const Text("1-866-358-2265",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)))),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "If you are seriously injured and need\nimmediate medical attention,\n please call 911 immediately.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
        Padding(
            padding: const EdgeInsets.only(top: 3),
            child: SizedBox(
              width: 300,
              height: 100,
              child: ElevatedButton(
                  onPressed: () async {
                    //indirect phone call
                    launchUrl(Uri.parse('tel:2175533089'),
                        mode: LaunchMode.platformDefault);
                  },
                  child: const Text(
                    "Call 911",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            )),
        // Padding(
        //     padding: const EdgeInsets.only(top: 10, bottom: 10),
        //     child: SizedBox(
        //       width: 200,
        //       height: 60,
        //       child: Card(
        //           color: Theme.of(context).colorScheme.surface,
        //           child: const Text(
        //             "Call 911",
        //             style: TextStyle(
        //                 fontSize: 25,
        //                 height: 1.8,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white),
        //             textAlign: TextAlign.center,
        //           )),
        //     )),
        const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              "OR",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        Padding(
            padding: const EdgeInsets.only(top: 3),
            child: SizedBox(
              width: 300,
              height: 100,
              child: ElevatedButton(
                  onPressed: () {
                    _displayTextInputDialog(context);
                  },
                  child: const Text(
                    "Connect to a Crisis Team Member",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            )),
      ]),
    );
  }
}

final TextEditingController nameController = TextEditingController();
final TextEditingController needController = TextEditingController();
final ButtonStyle yesStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.green);
final ButtonStyle noStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.red);
String nameText = '';
String needText = '';

Future<void> _displayTextInputDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Contact a Crisis Team Member:'),
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
                needText = value;
              },
              controller: needController,
              decoration: const InputDecoration(hintText: "Enter Your Need"),
            ),
          ]),
          actions: <Widget>[
            ElevatedButton(
              key: const Key("OKButton"),
              style: yesStyle,
              child: const Text('OK'),
              onPressed: () {
                _handleNewItem(nameText, needText);
                Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),

            // https://stackoverflow.com/questions/52468987/how-to-turn-disabled-button-into-enabled-button-depending-on-conditions
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: needController,
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

void _handleNewItem(String nameText, String needText) {
  nameController.clear();
  needController.clear();

  auth.signInAnonymously();

  UnclaimedMessage newMessage = UnclaimedMessage(
      userAddress: auth.currentUser!.uid,
      userDisplayName: nameText,
      location: '',
      need: needText,
      description: needText,
      time: DateTime.now().millisecondsSinceEpoch.toString());

  unclaimedMessageRef.doc().set(newMessage);
}
