import 'package:flutter/material.dart';
import './textfield.dart';
import './item.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("Simple list"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("Simple list"),
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Items"),
      ),
      body: Padding(
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
      ),
    );
  }
}
