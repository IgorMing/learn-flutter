import 'package:flutter/material.dart';

import 'package:tasks_app/src/screens/home.dart';
import 'package:tasks_app/src/screens/details.dart';

class RouterGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case Home.routeName:
        return MaterialPageRoute(builder: (_) => Home());
      case Details.routeName:
        final DetailsArguments args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => Details(
                onPressed: args.onSave,
              ),
        );
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text("Error"),
      ),
    );
  });
}
