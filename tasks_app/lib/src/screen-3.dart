import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Screen 3"),
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Text("Home screen 3"),
        ),
      ),
    );
  }
}
