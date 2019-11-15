import 'package:flutter/material.dart';

class ContentNavigation extends StatelessWidget {

  // 네비게이션 객체들을 리스트로 전달받아야겠다.

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
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
