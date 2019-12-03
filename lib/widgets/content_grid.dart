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
          Text('hey!'),
          Container(
            height: 700.0,
            child: GridView.builder(
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
                          Hero(
                            tag: 'something',
                            child: Material(
                              color: Colors.white,
                              child: InkWell(
                                onTap: () {},
                                child: GridTile(
                                  child: Container(
                                    child: ClipRRect(
                                      borderRadius: new BorderRadius.circular(4.0),
                                      child: Image.network(
                                          grid_item_list[index].image_link
                                      ),
                                    ),
                                  ),
                                )
                              ),
                            ),
                          ),
                          Text('hey!')
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
