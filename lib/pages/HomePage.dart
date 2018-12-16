import 'package:flutter/material.dart';
import '../part3rd/gravatar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert';

import './SearchPage.dart';
import './AboutPage.dart';
import './SettingPage.dart';

import '../core/comic.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  _HomePageState createState() => new _HomePageState();
}

enum SlideId {
  liked,
  history,
  newComic,
  download,
}

class _HomePageState extends State<HomePage> {
  SlideId sid = SlideId.newComic;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FeiLong"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: slideDrawer(context),
      body: mainBody(context),
    );
  }

  List<Comic> newComics = new List<Comic>();
  Comic tempComic = new Comic(
    "学霸哥哥别碰我",
    "https://ac.qq.com/Comic/comicInfo/id/636497",
    coverUrl:
        "https://manhua.qpic.cn/vertical/0/29_16_30_f0152490c8751bab91d07c475b82aaa6_1543480230071.jpg/420",
    description: '''什么？转学的第一天，竟然被学霸哥哥给强吻了？！拥有神奇能力，以特长生身份进入贵族学校的我，目的是要找...''',
    updateTime: "2018-12-17 15:30",
    isFinish: false,
    author: "feilong",
  );

  Widget mainBody(BuildContext context) {
    switch (sid) {
      case SlideId.newComic:
        newComics.add(tempComic);
        newComics.add(tempComic);
        newComics.add(tempComic);
        newComics.add(tempComic);
        return ListView.builder(
          itemCount: newComics.length,
          itemExtent: 125.0, //强制高度为50.0
          itemBuilder: (BuildContext context, int index) {
//            return ListTile(title: Text(newComics[index].title));
            print(newComics[index].coverUrl);
            return Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Image.network(newComics[index].coverUrl),
                    new Divider(),
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(newComics[index].title,
                            style: Theme.of(context).textTheme.title),
                        new Text(
                          newComics[index].author,
                          style: Theme.of(context).textTheme.body1,
                        ),
                        new Divider(),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green, width: 2.0),
                            ),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: new Text(
                              newComics[index].description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        );
        break;

      default:
        return new Center(
          child: new Text(
            sid.toString(),
            style: new TextStyle(fontSize: 35.0),
          ),
        );
    }
  }

  Widget slideDrawer(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('feilong'),
            accountEmail: new Text('feilongphone@gmail.com'),
            currentAccountPicture: new GestureDetector(
              child: new CircleAvatar(
                backgroundImage: new CachedNetworkImageProvider(
                  GetGravatarImage('feilongphone@gmail.com'),
                ),
              ),
            ),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new ExactAssetImage('res/images/slideImg.jpg'),
              ),
            ),
          ),
          SearchList(context),
          new Divider(),
          new ListTile(
              title: new Text('history'),
              trailing: new Icon(Icons.history),
              onTap: () {
                setState(() {
                  sid = SlideId.history;
                });
                Navigator.of(context).pop();
              }),
          new ListTile(
              title: new Text('liked'),
              trailing: new Icon(Icons.star),
              onTap: () {
                setState(() {
                  sid = SlideId.liked;
                });
                Navigator.of(context).pop();
              }),
          new ListTile(
              title: new Text('new comic'),
              trailing: new Icon(Icons.rss_feed),
              onTap: () {
                setState(() {
                  sid = SlideId.newComic;
                });
                Navigator.of(context).pop();
              }),
          new ListTile(
              title: new Text('download'),
              trailing: new Icon(Icons.file_download),
              onTap: () {
                setState(() {
                  sid = SlideId.download;
                });
                Navigator.of(context).pop();
              }),
          new Divider(),
          SettingList(context),
          AboutList(context),
        ],
      ),
    );
  }
}
