import 'package:flutter/material.dart';
import 'package:lunch_box/presentation/pages/menu_page.dart';

void main() => runApp(new AdminDashboard());

class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => new _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  var _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          "Admin Dashboard",
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new TextField(
              controller: _textController,
            ),
          ),
          new ListTile(
            title: new RaisedButton(
              child: new Text("Next"),
              onPressed: () {
                var route = new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new MenuScreen(value: _textController.text),
                );
                Navigator.of(context).push(route);
              },
            ),
          ),
        ],
      ),
    );
  }
}
