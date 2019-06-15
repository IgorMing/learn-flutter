import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onFinish;

  MyTextField(this.controller, {this.onFinish});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      onSubmitted: (String _) {
        this.onFinish();
      },
      controller: this.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        labelText: "Type an item. ..",
      ),
    );
  }
}
