import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:steyrapp/RidePage.dart';
import 'package:steyrapp/CommunityPage.dart';
import 'package:steyrapp/StorePage.dart';
import 'package:steyrapp/EventsPage.dart';
import 'package:steyrapp/MyCarPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Steyrbach App';

  void steyrappFirstFirebraseInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: _title,
      //Load any Stateful widget as a homepage. We can allow user to change
      //this later in settings
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.location_solid),
            label: 'Ride',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_3_fill),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.flag_circle_fill),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.car_detailed),
            label: 'My Car',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const RidePage();
          case 1:
            return const CommunityPage();
          case 2:
            return const StorePage();
          case 3:
            return const EventsPage();
          case 4:
            return const MyCarPage();
          default:
            return const MyCarPage();
        }
      },
    );
  }
}
