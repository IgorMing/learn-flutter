import 'package:flutter/material.dart';

import 'package:tasks_app/src/screens/home.dart';
import 'package:tasks_app/src/screens/details.dart';

Map<String, WidgetBuilder> appRoutes() {
  Map<String, WidgetBuilder> _routes = Map();
  _routes.addAll({
    '/home': (BuildContext context) => Home(),
    '/details': (BuildContext context) => Details(),
  });
  return _routes;
}
