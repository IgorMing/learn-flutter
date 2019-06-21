import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;

  RoundedButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/details");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 8.0,
      padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
