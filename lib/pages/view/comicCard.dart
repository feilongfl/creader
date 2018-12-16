import 'package:flutter/material.dart';
import '../../part3rd/gravatar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert';

import '../../core/comic.dart';

Widget comicCard(BuildContext context, Comic comic) {
  return new Row(
    children: <Widget>[
      new Image.network(comic.coverUrl),
      new Divider(),
      new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(comic.title, style: Theme.of(context).textTheme.title),
          new Text(
            comic.author,
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
                comic.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
          )
        ],
      ),
    ],
  );
}
