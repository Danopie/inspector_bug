import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_test/package_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton(
              child: Text("Push from application"),
              onPressed: () {
                pushPageFromApplication(context: context);
              },
            ),
            RaisedButton(
              child: Text("Push from package"),
              onPressed: () {
                pushPageFromPackage(context: context);
              },
            )
          ],
        ),
      ),
    );
  }
}

Future<dynamic> pushPageFromApplication({BuildContext context}) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PageInPackage()));
}
