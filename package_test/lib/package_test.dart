import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> pushPageFromPackage({BuildContext context}) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SamplePage()));
}

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("A page from package"),
      ),
    );
  }
}
