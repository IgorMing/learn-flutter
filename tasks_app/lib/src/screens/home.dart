import 'package:flutter/material.dart';
import 'package:tasks_app/src/widgets/list.dart';

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
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/details");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 8.0,
              padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
              child: Text(
                "ADD TASK",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: TaskList(_items),
            ),
          ],
        ),
      ),
    );
  }
}
