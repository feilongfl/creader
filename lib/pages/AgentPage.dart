import 'package:flutter/material.dart';

Widget AgentList(context) {
  return new ListTile(
      title: new Text('Agent'),
      trailing: new Icon(Icons.ac_unit),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new AgentPage()));
      });
}

class AgentPage extends StatelessWidget {
  AgentPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Agent'),
      ),
    );
  }
}
