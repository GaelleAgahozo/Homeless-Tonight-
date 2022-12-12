import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:homeless_tonight/pageTemplate.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesScreen extends StatelessWidget {
  /// Creates a screen that displays the types of resources
  /// available through the Homeless Coalition.
  ///
  /// No required parameters.
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double appWidth = MediaQuery.of(context).size.width - 100;

    return HomelessTonightPage(
      child: Column(children: <Widget>[
        const Spacer(),
        ElevatedButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResourceListScreen(
                          title: 'Shelter', databaseRef: shelterRef))));
            }),
            child: SizedBox(
              width: appWidth,
              height: 100,
              child: const Center(
                child: Text('Shelter',
                    style: TextStyle(fontSize: 24, height: 1.1)),
              ),
            )),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResourceListScreen(
                          title: 'Food', databaseRef: foodRef))));
            }),
            child: SizedBox(
              width: appWidth,
              height: 100,
              child: const Center(
                  child: Text('Food',
                      style: TextStyle(fontSize: 24, height: 1.1))),
            )),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResourceListScreen(
                          title: 'Emergency Supplies',
                          databaseRef: emergencySuppliesRef))));
            }),
            child: SizedBox(
              width: appWidth,
              height: 100,
              child: const Center(
                  child: Text('Emergency Supplies',
                      style: TextStyle(fontSize: 24, height: 1.1))),
            )),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResourceListScreen(
                          title: 'Laundry', databaseRef: laundryRef))));
            }),
            child: SizedBox(
              width: appWidth,
              height: 100,
              child: const Center(
                  child: Text('Laundry',
                      style: TextStyle(fontSize: 24, height: 1.1))),
            )),
        const Spacer(flex: 2)
      ]),
    );
  }
}

// I plan to store the lists of resources in firebase.

class ResourceListScreen extends StatelessWidget {
  /// Creates a screen to dispay a list of resources.
  ///
  /// [title] and [databaseRef] are required parameters and cannot be null.
  ///
  ///   * [title] must be a string that will be displayed as the title of the page.
  ///   * [databaseRef] must be a reference to a firestore database containing as list
  ///     of resources.
  const ResourceListScreen(
      {super.key, required this.title, required this.databaseRef});

  final String title;
  final CollectionReference<Resource> databaseRef;

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scrollable(
        viewportBuilder: (context, position) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Theme.of(context).colorScheme.surface,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 36),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: StreamBuilder<QuerySnapshot<Resource>>(
                  stream: databaseRef
                      .orderBy('title', descending: false)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }

                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    final data = snapshot.requireData;

                    return ListView.builder(
                      itemCount: data.size,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return ResourceListItem(
                          resource: data.docs[index].data(),
                        );
                      },
                    );
                  },
                ),
              )
            ]),
      ),
    ));
  }
}

class ResourceListItem extends StatelessWidget {
  const ResourceListItem({super.key, required this.resource});

  final Resource resource;

  final TextStyle _textStyle = const TextStyle(
      color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithoutJavaScript(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithoutDomStorage(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableDomStorage: false),
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchUniversalLinkIos(Uri url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
      );
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  Future<void> _goTo(String link) async {
    final Uri launchUri = Uri(
      path: link,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: ListTile(
                  title: Text(resource.name,
                      textAlign: TextAlign.center, style: _textStyle),
                  subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(resource.longDescription,
                                textAlign: TextAlign.center)),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Address: ${resource.address}")),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text("Phone Number: ${resource.phoneNumber}")),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Hours: ${resource.hours}")),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Website: ${resource.website}"))
                      ]))),
              onTap: () => launchUrl(
                  Uri.parse("https://${resource.website.toString()}")),
            )));
  }
}

@immutable
class Resource {
  /// A container class holding the attributes of a resource for the homeless
  ///
  /// [name] and [description] cannot be null
  ///
  /// Parameters:
  ///   * [name] is the String name of the resource.
  ///   * [shortDescription] is a short String description of the services
  ///     provided by the resource.
  ///   * [longDescription] is a longer String description of the services
  ///     provided by the resource.
  ///   * (Optional) [hours] are the open hours of the resource, provided as a string.
  ///   * (Optional) [phoneNumber] is the phone number of the resource, provided as a string.
  ///   * (Optional) [address] is the street address of the resource, provided as a string.
  ///   * (Optional) [website] is the web address of the resource, provided as string.
  const Resource(
      {required this.name,
      required this.shortDescription,
      required this.longDescription,
      this.hours,
      this.phoneNumber,
      this.address,
      this.website});

  Resource.fromJson(Map<String, Object?> json)
      : this(
          name: json['title']! as String,
          shortDescription: json['short_description']! as String,
          longDescription: json['long_description']! as String,
          hours: json['hours']! as String,
          phoneNumber: json['phone_number']! as String,
          address: json['street_address']! as String,
          website: json['website_address']! as String,
        );

  final String name;

  /// A short String description of the resource provided.
  final String shortDescription;
  final String longDescription;
  final String? hours;
  final String? phoneNumber;
  final String? address;
  final String? website;

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'short_description': shortDescription,
      'long_description': longDescription,
      'hours': hours,
      'phone_number': phoneNumber,
      'address': address,
      'website': website,
    };
  }
}

final foodRef = FirebaseFirestore.instance
    .collection('resources_food')
    .withConverter<Resource>(
      fromFirestore: (snapshots, _) => Resource.fromJson(snapshots.data()!),
      toFirestore: (resource, _) => resource.toJson(),
    );

final shelterRef = FirebaseFirestore.instance
    .collection('resources_shelter')
    .withConverter<Resource>(
      fromFirestore: (snapshots, _) => Resource.fromJson(snapshots.data()!),
      toFirestore: (resource, _) => resource.toJson(),
    );

final laundryRef = FirebaseFirestore.instance
    .collection('resources_laundry')
    .withConverter<Resource>(
      fromFirestore: (snapshots, _) => Resource.fromJson(snapshots.data()!),
      toFirestore: (resource, _) => resource.toJson(),
    );

final emergencySuppliesRef = FirebaseFirestore.instance
    .collection('resources_supplies')
    .withConverter<Resource>(
      fromFirestore: (snapshots, _) => Resource.fromJson(snapshots.data()!),
      toFirestore: (resource, _) => resource.toJson(),
    );
