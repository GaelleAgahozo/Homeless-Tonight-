import 'package:flutter/material.dart';
import 'package:homeless_tonight/pageTemplate.dart';

class ResourcesScreen extends StatelessWidget {
  /// Creates a screen that displays the types of resources
  /// available through the Homeless Coalition.
  /// 
  /// No required parameters.
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Column(
        children: <Widget>[
        const Spacer(),
        ElevatedButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        const ResourceListScreen(title: 'Shelter', resourceList: [
                          Resource(
                            name: 'Shelter Service 1',
                            description: 'A service providing shelter',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR',
                            website: 'www.shelterservice.com'
                          ),
                          Resource(
                            name: 'Shelter Service 2',
                            description: 'A service providing shelter',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Shelter Service 3',
                            description: 'A service providing shelter',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Shelter Service 4',
                            description: 'A service providing shelter',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          )
                        ],))));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
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
                    builder: ((context) =>
                        const ResourceListScreen(title: 'Food', resourceList: [
                          Resource(
                            name: 'Food Service 1',
                            description: 'A service providing breakfast',
                            hours: 'Mon-Fri: 7a - 12p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR',
                            website: 'www.foodservice.com'
                          ),
                          Resource(
                            name: 'Food Service 2',
                            description: 'A service providing breakfast and lunch',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Food Service 3',
                            description: 'A service providing shelter breakfast, lunch and dinner',
                            hours: 'Mon-Fri: 9a - 9p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Food Service 4',
                            description: 'A service providing food',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          )
                        ],))));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
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
                    builder: ((context) =>
                        const ResourceListScreen(title: 'Emergency Supplies', resourceList: [
                          Resource(
                            name: 'Emergency Supplies Service 1',
                            description: 'A service providing emergency supplies',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR',
                            website: 'www.laundryservice.com'
                          ),
                          Resource(
                            name: 'Emergency Supplies Service 2',
                            description: 'A service providing emergency supplies',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Emergency Supplies Service 3',
                            description: 'A service providing emergency supplies',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Emergency Supplies Service 4',
                            description: 'A service providing emergency supplies',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          )
                        ],))));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
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
                    builder: ((context) =>
                        const ResourceListScreen(title: 'Laundry', resourceList: [
                          Resource(
                            name: 'Laundry Service 1',
                            description: 'A service providing laundry',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR',
                            website: 'www.shelterservice.com'
                          ),
                          Resource(
                            name: 'Laundry Service 2',
                            description: 'A service providing laundry',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Laundry Service 3',
                            description: 'A service providing laundry',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          ),
                          Resource(
                            name: 'Laundry Service 4',
                            description: 'A service providing laundry',
                            hours: 'Mon-Fri: 9a - 6p',
                            phoneNumber: '1234567890',
                            address: '1234 Main st, Conway, AR'
                          )
                        ],))));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
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
  /// [title] and [resourceList] are required parameters and cannot be null.
  /// 
  ///   * [title] must be a string that will be displayed as the title of the page.
  ///   * [resourceList] must be a List<Resource>, where each item is a Resource
  ///     containing the information for a resource for the homeless.
  const ResourceListScreen({super.key, required this.title, required this.resourceList});

  final String title;
  final List<Resource> resourceList;

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 36
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
              children: resourceList.map((resource) {
                return InkWell(
                  onTap:() {
                    _displayResourceInfoDialog(context, resource);
                  },
                  child: Card(
                    color: Theme.of(context).colorScheme.surface,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(resource.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 24
                            ),
                          ),
                          Text(resource.description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 18
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },).toList()
              ),
            )],
        ),
      ),
    );
  }
}

Future<void> _displayResourceInfoDialog(BuildContext context, Resource resource) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(resource.name,
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                resource.description
              ),
              const SizedBox(height: 10,),
              if (resource.hours != null) Text(
                resource.hours!
              ),
              const SizedBox(height: 10,),
              if (resource.phoneNumber != null) Text(
                resource.phoneNumber!
              ),
              const SizedBox(height: 10,),
              if (resource.address != null) Text(
                resource.address!
              ),
              const SizedBox(height: 10,),
              if (resource.website != null) Text(
                resource.website!
              ),
            ]
          ),
          actions: [
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Done'),
              ),
            )
          ],
        );
      }
    );
  }

class Resource {
  /// A container class holding the attributes of a resource for the homeless
  /// 
  /// [name] and [description] cannot be null
  /// 
  /// Parameters:
  ///   * [name] is the String name of the resource.
  ///   * [description] is a short String description of the services
  ///     provided by the resource.
  ///   * (Optional) [hours] are the open hours of the resource, provided as a string.
  ///   * (Optional) [phoneNumber] is the phone number of the resource, provided as a string.
  ///   * (Optional) [address] is the street address of the resource, provided as a string.
  ///   * (Optional) [website] is the web address of the resource, provided as string.
  const Resource({required this.name, required this.description, this.hours, this.phoneNumber, this.address, this.website});

  final String name;
  /// A short String description of the resource provided.
  final String description;
  final String? hours;
  final String? phoneNumber;
  final String? address;
  final String? website;

}