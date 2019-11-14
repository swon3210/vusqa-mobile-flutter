import 'package:flutter/material.dart';

class ContentNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Text('안녕하십니까'),
          SizedBox(width: 20.0),
          Text('안녕하십니까')
        ],
      ),
    );
  }
}
