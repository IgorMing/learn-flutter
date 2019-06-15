import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String title;
  final int index;
  final Function onDelete;

  Item(this.title, this.index, {this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: ListTile(
              title: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                onDelete(this.index);
              },
              icon: Icon(
                Icons.delete_outline,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
