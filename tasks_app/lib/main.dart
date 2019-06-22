import 'package:flutter/material.dart';
import 'package:tasks_app/routes.dart';

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
      initialRoute: '/',
      onGenerateRoute: RouterGenerator.generateRoutes,
      title: "Tasks app",
    );
  }
}
