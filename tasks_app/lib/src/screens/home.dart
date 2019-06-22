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

  void _addItem() {
    print("it's called");
  }

  @override
  Widget build(BuildContext context) {
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
