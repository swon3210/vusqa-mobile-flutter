import 'package:flutter/material.dart';

// 위젯 import
import 'package:vusqa_application/widgets/content_navigation.dart';
import 'package:vusqa_application/widgets/content_list.dart';
import 'package:vusqa_application/widgets/content_grid.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';
import 'package:vusqa_application/classes/grid_item.dart';


class NewsSection extends StatefulWidget {
  @override
  _NewsSectionState createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {

  List<ListItem> news_list = [
    ListItem(title: 'post', post_link: 'link'),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContentNavigation(),
        ContentList(post_list: news_list),
        ContentGrid()
      ],
    );
  }
}
