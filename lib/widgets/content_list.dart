import 'package:flutter/material.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';


class ContentList extends StatelessWidget {

  List<ListItem> item_list;

  ContentList({this.item_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 280.0,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: ListTile.divideTiles(
          context: context,
          tiles: item_list.map((x) {
            return ListTile(
              title: Text(x.title),
            );
          }).toList()
        ).toList(),
      ),
    );
  }
}
