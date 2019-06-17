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
            child: CheckboxListTile(
              value: true,
              secondary: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.check_circle_outline,
                  color: Theme.of(context).accentColor,
                ),
              ),
              title: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 22),
              ),
            ),
          )
        ],
      ),
    );
  }
}
