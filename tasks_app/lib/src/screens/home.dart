import 'package:flutter/material.dart';
import 'package:tasks_app/src/screens/details.dart';
import 'package:tasks_app/src/widgets/list.dart';
import 'package:tasks_app/src/widgets/rounded_button.dart';

class Item {
  final String name;
  final String description;
  final bool isReady;

  Item(this.name, {this.description, this.isReady});
}

class Home extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> _items = [];

  void _addItem(Item item) {
    _items.add(item);
    /**
     * TODO: Continue from here
     * 
     * Step 1 - Add this values to _items
     * Step 2 - Enable edit
     * Step 3 - Enable deletion by horizontal scroll
     * Step 4 - Save and get information to/from a json file
     */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: <Widget>[
            RoundedButton("ADD TASK", () {
              Navigator.of(context).pushNamed(Details.routeName,
                  arguments: DetailsArguments(this._addItem));
            }),
            Expanded(
              child: TaskList(_items),
            ),
          ],
        ),
      ),
    );
  }
}
