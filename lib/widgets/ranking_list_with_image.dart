import 'package:flutter/material.dart';
import 'package:vusqa_application/classes/ranking_item.dart';

class RankingListWithImage extends StatelessWidget {

  List<RankingItem> ranking_item_list;

  RankingListWithImage({this.ranking_item_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16.0, top: 10.0),
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Ranking Top 10',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 930.0,
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 0.0),
              physics: NeverScrollableScrollPhysics(),
              children: ListTile.divideTiles(
                  context: context,
                  tiles: ranking_item_list.map((x) {
                    return Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: ListTile(
                        leading: Container(
                          alignment: Alignment.topCenter,
                          width: 40.0,
                          height: 70.0,
                          child: Text(
                            '01',
                            style: TextStyle(
                              color: Color(0xff2E9E4C),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        title: Container(
                          child: Text(
                            x.text,
                            style: TextStyle(fontSize: 12.5),
                          ),
                        ),
                        subtitle: Container(
                          child: Text(
                            x.press,
                            style: TextStyle(
                              color: Color(0xff2E9E4C),
                              fontSize: 12.0
                            ),
                          ),
                        ),
                        trailing: Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Image.network(x.image_src)
                          ),
                        )
                      ),
                    );
                  }).toList()
              ).toList()
            ),
          ),
        ],
      ),
    );
  }
}

