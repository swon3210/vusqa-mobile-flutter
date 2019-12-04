import 'package:flutter/material.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';


class ContentList extends StatelessWidget {

  List<ListItem> item_list;

  ContentList({this.item_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      color: Colors.white,
      height: 280.0,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 0.0),
        physics: NeverScrollableScrollPhysics(),
        children: ListTile.divideTiles(
          context: context,
          tiles: item_list.map((x) {
            return ListTile(
              title: Text(
                x.title,
                style: TextStyle(fontSize: 12.5),
              ),
            );
          }).toList()
        ).toList(),
      ),
    );
  }
}
