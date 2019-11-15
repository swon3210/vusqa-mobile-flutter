import 'package:flutter/material.dart';

class RealtimeSearchKeywords extends StatefulWidget {
  @override
  _RealtimeSearchKeywordsState createState() => _RealtimeSearchKeywordsState();
}

class _RealtimeSearchKeywordsState extends State<RealtimeSearchKeywords> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    '실시간',
                    style: TextStyle(
                      color: Colors.indigo[300]
                    ),
                  ),
                ),
                Text('4 흑사병')
              ],
            ),
            Row(
              children: <Widget>[
                Text('331'),
                DropdownButton()
              ],
            )
          ],
        ),
      )
    );
  }
}
