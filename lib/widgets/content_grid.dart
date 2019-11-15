import 'package:flutter/material.dart';
import 'package:vusqa_application/classes/grid_item.dart';

class ContentGrid extends StatelessWidget {

  List<GridItem> grid_item_list;

  ContentGrid({this.grid_item_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 0.0,
            child: Hero(
              tag: 'something',
              child: Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: GridTile(
                    child: Column(
                      children: <Widget>[
                        Image.network('https://images.unsplash.com/photo-1502951682449-e5b93545d46e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=966&q=80'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Desciption'),
                        )
                      ],
                    ),
                  )
                ),
              ),
            ),
          );
        },
        itemCount: grid_item_list.length,
      ),
    );
  }
}
