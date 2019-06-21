import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String labelText;
  final int numberOfLines;

  InputText(this.labelText, {this.numberOfLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: this.numberOfLines,
      style: TextStyle(
        fontSize: 16,
      ),
      decoration: InputDecoration(
        labelText: this.labelText,
      ),
    );
  }
}
