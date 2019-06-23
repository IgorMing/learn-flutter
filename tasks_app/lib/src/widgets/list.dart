import 'package:flutter/material.dart';
import 'package:tasks_app/src/screens/home.dart';

class TaskList extends StatelessWidget {
  final List<Item> items;

  TaskList(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        var name = items[index].name;
        var description = items[index].description;
        var isReady = items[index].isReady;
        return Card(
          child: ListTile(
            title: Text(name),
            subtitle: description.isEmpty ? null : Text(description),
            leading: Icon(isReady ? Icons.check : Icons.close),
          ),
        );
      },
    );
  }
}
