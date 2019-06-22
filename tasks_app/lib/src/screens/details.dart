import 'package:flutter/material.dart';
import 'package:tasks_app/src/screens/home.dart';
import 'package:tasks_app/src/widgets/input_text.dart';

class DetailsArguments {
  final Function onSave;

  DetailsArguments(this.onSave);
}

class Details extends StatefulWidget {
  static const routeName = '/details';
  final Function onSave;

  Details({@required this.onSave});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final _formKey = GlobalKey<FormState>();
  bool _isReady = false;
  static Map<String, TextEditingController> staticControllers = {
    "name": TextEditingController(),
    "description": TextEditingController(),
  };

  final Map _controllers = Map.of(staticControllers);

  void _onSave() {
    if (!this._formKey.currentState.validate()) {
      return;
    }

    final String _description =
        (_controllers["description"] as TextEditingController).value.text;
    final String _name =
        (_controllers["name"] as TextEditingController).value.text;

    widget
        .onSave(Item(_name, description: _description, isReady: this._isReady));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Details"),
        centerTitle: true,
        actions: <Widget>[
          RaisedButton(
            onPressed: this._onSave,
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
        alignment: Alignment.center,
        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: this._formKey,
          child: Column(
            children: <Widget>[
              InputText(
                "Name",
                controller: _controllers["name"],
                validator: (String value) {
                  if (value.isEmpty) {
                    return "This field is required";
                  }
                },
              ),
              InputText(
                "Description",
                controller: _controllers["description"],
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
