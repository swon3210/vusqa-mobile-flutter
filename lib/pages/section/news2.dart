import 'package:flutter/material.dart';

// 위젯 import
import 'package:vusqa_application/widgets/content_navigation.dart';
import 'package:vusqa_application/widgets/content_list.dart';
import 'package:vusqa_application/widgets/content_grid.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';
import 'package:vusqa_application/classes/grid_item.dart';

class NewsSection2 extends StatefulWidget {
  @override
  _NewsSection2State createState() => _NewsSection2State();
}

class _NewsSection2State extends State<NewsSection2> {

  List<ListItem> news_list = [
    ListItem(title: 'post', post_link: 'link'),
    ListItem(title: 'post2', post_link: 'link2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ContentList(item_list: news_list),
        ],
      ),
    );
  }
}
