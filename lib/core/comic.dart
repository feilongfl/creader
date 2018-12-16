import 'package:json_annotation/json_annotation.dart';


class Comic {
  String title;
  String author;
  String updateTime;
  String description;
  String coverUrl;
  String originUrl;
  bool isFinish;

  Comic(this.title,this.originUrl,
  {
    this.author = "feilong",
    this.updateTime = "",
    this.coverUrl = "",
    this.description = "",
    this.isFinish = false,
  });
}