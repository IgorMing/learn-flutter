import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String labelText;
  final int numberOfLines;
  final Function validator;
  final TextEditingController controller;

  InputText(this.labelText,
      {this.numberOfLines, this.validator, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      maxLines: this.numberOfLines,
      validator: this.validator,
      style: TextStyle(
        fontSize: 16,
      ),
      decoration: InputDecoration(
        labelText: this.labelText,
      ),
    );
  }
}
