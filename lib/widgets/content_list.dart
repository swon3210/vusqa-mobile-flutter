import 'package:flutter/material.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';


class ContentList extends StatelessWidget {

  List<ListItem> post_list;

  ContentList({this.post_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(0.0),
            title: Text('반갑습니다'),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0.0),
            title: Text('반갑습니다'),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0.0),
            title: Text('반갑습니다'),
          ),
        ],
      ),
    );
  }
}
