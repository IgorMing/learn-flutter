import 'package:flutter/material.dart';
import 'package:tasks_app/src/widgets/input_text.dart';

class DetailsArguments {
  final Function onSave;

  DetailsArguments(this.onSave);
}

class Details extends StatefulWidget {
  static const routeName = '/details';
  final Function onPressed;

  Details({@required this.onPressed});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool _isReady = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Details"),
        centerTitle: true,
        actions: <Widget>[
          RaisedButton(
            onPressed: widget.onPressed,
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              InputText("Name"),
              InputText(
                "Description",
                numberOfLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Ready?",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Switch(
                    value: this._isReady,
                    onChanged: (value) {
                      setState(() {
                        this._isReady = value;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
