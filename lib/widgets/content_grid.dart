import 'package:flutter/material.dart';

class ContentGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
//      gridDelegate: SliverGridDelegate(
//
//      ), 여기 어떻게 해야 되는거지
      children: <Widget>[
        Text('hey!')
      ],
    );
  }
}
