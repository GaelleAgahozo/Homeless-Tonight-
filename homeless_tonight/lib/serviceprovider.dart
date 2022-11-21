import 'package:flutter/material.dart';

class ServiceProviderScreen extends StatelessWidget {
  const ServiceProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          iconTheme: const IconThemeData(color: Color(0xff73bfb8)),
          centerTitle: true,
          title: Align(alignment: Alignment.center,child: Image.asset('assets/images/logoTSC.png',
              fit: BoxFit.fitWidth, height: 60, width: 130),),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {Navigator.pushNamed(context, '/profile');},
            )
          ],
        ),
      ),
      body: Text('service provider screen')
    );
  }
}