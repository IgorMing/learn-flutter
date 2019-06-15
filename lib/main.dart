import 'package:flutter/material.dart';
import 'package:items_list/src/SimpleList/index.dart';
import 'package:items_list/src/ComplexList/index.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static List<Widget> _screens = <Widget>[
    SimpleList(),
    ComplexList(),
  ];

  void _onChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.blueGrey),
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onChange,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.list, size: 36),
              title: Text("Simple list"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted, size: 36),
              title: Text("Complex list"),
            ),
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Items"),
        ),
        body: _screens.elementAt(_selectedIndex),
      ),
    );
  }
}
