import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:homeless_tonight/messageui.dart';

class ListProviders extends StatelessWidget {
  //const MyWidget({super.key});
  final providers = ["Shelter Provider", "Food Provider"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: providers.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
            },
            title: Text(providers[index]),
            trailing: TextButton(
              child: Text("Claim"),
              onPressed: () {},
            ),
          ));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider());
  }
}
