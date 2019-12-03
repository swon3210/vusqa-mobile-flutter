import 'package:flutter/material.dart';
import 'package:vusqa_application/classes/category_item.dart';

class CategoryList extends StatelessWidget {

  List<CategoryItem> category_list;

  CategoryList({this.category_list});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          ...category_list.map((x) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.grey,
                    width: 0.4,
                  )
                )
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width * (1 / category_list.length),
              padding: EdgeInsets.all(10.0),
              child: Card(
                elevation: 0.0,
                child: Text(
                  x.category_name,
                  textAlign: TextAlign.center,
                ),

              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
