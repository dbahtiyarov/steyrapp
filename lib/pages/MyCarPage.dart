// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'AppSettings.dart';

class MyCarPage extends StatefulWidget {
  const MyCarPage({Key? key}) : super(key: key);

  @override
  State<MyCarPage> createState() => _MyCarPageState();
}

class _MyCarPageState extends State<MyCarPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // Uncomment to change the background color
      // backgroundColor: CupertinoColors.systemPink,
      navigationBar: CupertinoNavigationBar(
          middle: const Text('Steyrbach Adria TS'),
          trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Icon(CupertinoIcons.settings),
              onPressed: () => Navigator.pop(context,
                  CupertinoPageRoute(builder: (context) => AppSettings())))),

      child: ListView(
        children: <Widget>[
          CupertinoButton(
            onPressed: () => setState(() => _count++),
            child: const Icon(CupertinoIcons.add),
          ),
          Center(
            child: Text('You have  the button $_count times.'),
          ),
        ],
      ),
    );
  }
}
