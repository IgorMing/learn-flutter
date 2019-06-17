import 'package:flutter/material.dart';
import 'package:tasks_app/src/home.dart';
import 'package:tasks_app/src/screen-2.dart';
import 'package:tasks_app/src/screen-3.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonColor: Colors.blueGrey,
        backgroundColor: Colors.grey[200],
        primaryColor: Colors.blueGrey,
      ),
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        '/screen2': (BuildContext context) => Screen2(),
        '/screen3': (BuildContext context) => Screen3(),
      },
      title: "Tasks app",
    );
  }
}
