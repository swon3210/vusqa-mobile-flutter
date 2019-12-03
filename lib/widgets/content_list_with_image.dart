import 'package:flutter/material.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';


class ContentListWithImage extends StatelessWidget {

  List<ListItem> item_list;

  ContentListWithImage({this.item_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      color: Colors.white,
      height: 140.0,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 0.0),
        physics: NeverScrollableScrollPhysics(),
        children: ListTile.divideTiles(
          context: context,
          tiles: item_list.map((x) {
            return Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: ListTile(
                leading: ClipRRect(
                  child: Image.network(x.image_src),
                  borderRadius: BorderRadius.circular(2.0),

                ),
                title: Text(
                  x.title,
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
            );
          }).toList()
        ).toList(),
      ),
    );
  }
}
