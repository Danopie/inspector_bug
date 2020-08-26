import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> pushPageFromPackage({BuildContext context}) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PageInPackage()));
}

class PageInPackage extends StatefulWidget {
  @override
  _PageInPackageState createState() => _PageInPackageState();
}

class _PageInPackageState extends State<PageInPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
