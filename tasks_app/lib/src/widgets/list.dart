import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List items;

  TaskList(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }
}
