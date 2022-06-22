import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/MyCarPage.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Steyrbach Adria TS'),
        previousPageTitle: 'MyCarPage',
      ),
      child: Center(
        child: CupertinoButton.filled(
          child: const Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const MyCarPage()),
          ),
        ),
      ));
}
