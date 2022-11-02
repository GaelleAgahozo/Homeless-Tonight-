import 'package:flutter/material.dart';
import 'package:homeless_tonight/pageTemplate.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key, required String title});

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
                        ShelterScreen())));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 100,
              child: Center(
                child: const Text('Shelter',
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
                        FoodScreen())));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 100,
              child: Center(
                child: const Text('Food',
                  style: TextStyle(fontSize: 24, height: 1.1))),
            )),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        EmergencySuppliesScreen())));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 100,
              child: Center(
                child: const Text('Emergency Supplies',
                  style: TextStyle(fontSize: 24, height: 1.1))),
            )),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        LaundryScreen())));
                        }),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 100,
              child: Center(
                child: const Text('Laundry',
                  style: TextStyle(fontSize: 24, height: 1.1))),
            )),
            const Spacer(flex: 2)
      ]),
    );
  }
}

// I plan to store the lists of resources in firebase.
// Currently resources are set up as each type having its own page, but because each of the pages is identical beside the actual resources diplayed,
// it would make more sense to make it a single page that took a generic list of Resource items and a title. I didn't do that now because this was just a
// prototype and we had some time constraints, but we should make this a priority for the next prototype when we have firebase set up.

class ShelterScreen extends StatelessWidget {
  const ShelterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Shelter/Agency 1',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Shelter/Agency 2',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Shelter/Agency 3',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Food Service 1',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Meals Available: Breakfast, Lunch',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Food Service 2',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Meals Available: Lunch',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Food Service 3',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Meals Available: Lunch, Dinner',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencySuppliesScreen extends StatelessWidget {
  const EmergencySuppliesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Emergency Supply 1',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('A place to get emergency supplies.',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Emergency Supply 2',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('A website with supplies and resources for the homeless',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Website: www.testemergencysupplies.com',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Emergency Supplies 3',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('An agency that supplies and supports the homeless',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Website: www.testemergencysupplies.com',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LaundryScreen extends StatelessWidget {
  const LaundryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Laundry Service 1',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Laundry Service 2',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Laundry Service 3',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Hours: 9am - 5pm',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Phone Number: (123)456-7890',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,)),
                    Text('Address: 1234 Test st Conway, AR',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface,))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
