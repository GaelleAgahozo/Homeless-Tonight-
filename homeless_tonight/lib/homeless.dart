import 'package:flutter/material.dart';
import 'package:homeless_tonight/pageTemplate.dart';
import 'package:homeless_tonight/resources_screen.dart';
import 'package:homeless_tonight/domesticviolence.dart';
import 'package:homeless_tonight/need_shelter.dart';

class HomelessMainScreen extends StatefulWidget {
  const HomelessMainScreen({super.key});

  @override
  State<HomelessMainScreen> createState() => _HomelessMainScreenState();
}

class _HomelessMainScreenState extends State<HomelessMainScreen> {
  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          // const Spacer(
          //   flex: 2,
          // ),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Shelter())));
              }),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                height: 100,
                child: const Center(
                    child: Text("\n I need shelter tonight",
                        style: TextStyle(fontSize: 24, height: 1.1))),
              )),

          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const DomesticViolenceScreen())));
              }),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                height: 100,
                child: const Center(
                    child: Text('Domestic Violence/\n Sex Trafficing',
                        style: TextStyle(fontSize: 24, height: 1.1))),
              )),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ResourcesScreen())));
              }),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                height: 100,
                child: const Center(
                    child: Text('Resources',
                        style: TextStyle(fontSize: 24, height: 1.1))),
              )),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //     onPressed: (() {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: ((context) => ResourceListScreen(
          //                   title: 'Laundry', databaseRef: laundryRef))));
          //     }),
          //     child: SizedBox(
          //       width: MediaQuery.of(context).size.width - 100,
          //       height: 100,
          //       child: const Center(
          //           child: Text('Laundry',
          //               style: TextStyle(fontSize: 24, height: 1.1))),
          //     )),
          // const Spacer(flex: 2)
          //   , child: null,, child: null,]

          //         child: const Text("\n I need shelter",
          //             style: TextStyle(fontSize: 24, height: 1.1))),
          //     Padding(
          //         padding: const EdgeInsets.only(top: 50),
          //         child: ElevatedButton(
          //             onPressed: () => {
          //                   Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: ((context) =>
          //                               const DomesticViolenceScreen())))
          //                 },
          //             child: const Text("\n Domestic Violence/Sex Trafficking \n",
          //             style: TextStyle(fontSize: 24, height: 1.1)))),
          // Padding(
          //     padding: EdgeInsets.only(top: 50),
          //     child: ElevatedButton(
          //         onPressed: () => {
          //               Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                       builder: ((context) =>
          //                           const ResourcesScreen())))
          //             },
          //         child: const Text("\n Resources \n",
          //             style: TextStyle(fontSize: 24, height: 1.1)))),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/sign_in');
                  },
                  child: const Text("I am a Service Provider"))),
          // ignore: dead_code
        ]));
  }
}

// Widget build(BuildContext context) {
//   return HomelessTonightPage(
//     child: Column(children: <Widget>[
//       const Spacer(),
//       ElevatedButton(
//           onPressed: (() {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: ((context) => ResourceListScreen(
//                         title: 'Shelter', databaseRef: shelterRef))));
//           }),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width - 100,
//             height: 100,
//             child: const Center(
//               child:
//                   Text('Shelter', style: TextStyle(fontSize: 24, height: 1.1)),
//             ),
//           )),
//       const SizedBox(height: 20),
//       ElevatedButton(
//           onPressed: (() {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: ((context) => ResourceListScreen(
//                         title: 'Food', databaseRef: foodRef))));
//           }),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width - 100,
//             height: 100,
//             child: const Center(
//                 child:
//                     Text('Food', style: TextStyle(fontSize: 24, height: 1.1))),
//           )),
//       const SizedBox(height: 20),
//       ElevatedButton(
//           onPressed: (() {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: ((context) => ResourceListScreen(
//                         title: 'Emergency Supplies',
//                         databaseRef: emergencySuppliesRef))));
//           }),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width - 100,
//             height: 100,
//             child: const Center(
//                 child: Text('Emergency Supplies',
//                     style: TextStyle(fontSize: 24, height: 1.1))),
//           )),
//       const SizedBox(height: 20),
//       ElevatedButton(
//           onPressed: (() {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: ((context) => ResourceListScreen(
//                         title: 'Laundry', databaseRef: laundryRef))));
//           }),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width - 100,
//             height: 100,
//             child: const Center(
//                 child: Text('Laundry',
//                     style: TextStyle(fontSize: 24, height: 1.1))),
//           )),
//       const Spacer(flex: 2)
//     ]),
//   );
// }
// class ResourcesScreen extends StatelessWidget {
//   /// Creates a screen that displays the types of resources
//   /// available through the Homeless Coalition.
//   /// 
//   /// No required parameters.
//   const ResourcesScreen({super.key});

//   @override
  
// }