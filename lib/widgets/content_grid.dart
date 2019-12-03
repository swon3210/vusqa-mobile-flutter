import 'package:flutter/material.dart';
import 'package:vusqa_application/classes/grid_item.dart';

class ContentGrid extends StatelessWidget {

  List<GridItem> grid_item_list;

  ContentGrid({this.grid_item_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16.0, top: 5.0),
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Media Today',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 420.0,
            child: GridView.builder(
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
              ),
              itemCount: grid_item_list.length,

              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Card(
                      elevation: 0.0,
                      child: Column(
                        children: <Widget>[
                          GridTile(
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: new BorderRadius.circular(4.0),
                                  child: Image.network(
                                    grid_item_list[index].image_link,
                                    height: 157.0,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    grid_item_list[index].title,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(4.0),
                                  margin: EdgeInsets.only(left: 24),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
