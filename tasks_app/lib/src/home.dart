import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _navigate() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Home"),
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Home screen"),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/screen2");
                },
                child: Text(
                  "Click me",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
