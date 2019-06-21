import 'package:flutter/material.dart';
import 'package:tasks_app/src/widgets/list.dart';
import 'package:tasks_app/src/widgets/rounded_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const List<String> _items = ['Testing..', 'another item'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: <Widget>[
            RoundedButton("ADD TASK"),
            Expanded(
              child: TaskList(_items),
            ),
          ],
        ),
      ),
    );
  }
}
