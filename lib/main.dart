import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Look in the Code!'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Hey.  You can check out some cool Unit Testing examples over in the tested.dart and /test/testedtest.dart files!'),
            new Text('But how do I unit test something that relies on an external service?', style: new TextStyle(
              fontWeight: FontWeight.bold
            )),
            new Text("Check out /test/integrationtest.dart for an example of using mocking to test a simple controller that fetches data and displays it")
          ],
        ),
      ),
    );
  }
}