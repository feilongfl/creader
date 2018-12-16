import 'package:flutter/material.dart';

Widget AboutList(BuildContext context) {
  return new ListTile(
      title: new Text('About'),
      trailing: new Icon(Icons.info_outline),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new AboutPage()));
      });
}

class AboutPage extends StatelessWidget {
  AboutPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('FeiLong'),
      ),
    );
  }
}
