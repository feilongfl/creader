import 'package:flutter/material.dart';

Widget SearchList(context) {
  return new ListTile(
      title: new Text('Search'),
      trailing: new Icon(Icons.search),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new SearchPage()));
      });
}

class SearchPage extends StatelessWidget {
  SearchPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Search'),
      ),
    );
  }
}
