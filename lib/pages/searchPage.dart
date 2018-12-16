import 'package:flutter/material.dart';
import './view/comicCard.dart';
import '../core/comic.dart';

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

Widget searchBody(BuildContext context) {
  return ListView.builder(
      itemCount: 3,
      itemExtent: 125.0, //强制高度为50.0
      itemBuilder: (BuildContext context, int index) {
        return comicCard(context, tempComic);
      });
}

void doSearch(String str){
  print(str);
}