import 'package:flutter/material.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';


class ContentListWithImage extends StatelessWidget {

  String section_title;
  List<ListItem> item_list;

  ContentListWithImage({this.item_list, this.section_title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          section_title != null ? Container(
            child: Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 18.0, top: 10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                section_title,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ) : Container(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            height: section_title != null ? 400.0 : 200,
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
                        child: Image.network(
                          x.image_src,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(2.0),

                      ),
                      title: Text(
                        x.title,
                        style: TextStyle(fontSize: 12.5),
                      ),
                      subtitle: Text(
                        'JuegaGerman',
                        style: TextStyle(
                          fontSize: 12.0
                        ),
                      ),
                    ),
                  );
                }).toList()
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
