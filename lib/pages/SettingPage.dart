import 'package:flutter/material.dart';
import '../generated/i18n.dart';

Widget SettingList(BuildContext context) {
  return new ListTile(
      title: new Text('Setting'),
      trailing: new Icon(Icons.settings),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new SettingPage()));
      });
}

class SettingPage extends StatelessWidget {
  SettingPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Setting"),
      ),
    );
  }
}
