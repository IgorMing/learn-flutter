import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import './textfield.dart';
import './item.dart';

class SimpleList extends StatefulWidget {
  @override
  _SimpleList createState() => _SimpleList();
}

class _SimpleList extends State<SimpleList> {
  final _textController = TextEditingController();
  List<String> _items = <String>[];

  void addItem() {
    setState(() {
      _items.add(_textController.text);
    });
    _textController.clear();
  }

  void deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  Future<File> _getFile() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  void _saveData() async {
    String data = json.encode(_items);
    final File file = await _getFile();
    file.writeAsStringSync(data);
  }

  Future<String> _readData() async {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: MyTextField(
                  _textController,
                  onFinish: addItem,
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  iconSize: 50,
                  icon: Icon(
                    Icons.add,
                  ),
                  onPressed: addItem,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 20),
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                return Item(
                  _items[index],
                  index,
                  onDelete: deleteItem,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
