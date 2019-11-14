import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vusqa_application/pages/section/news.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('실시간'),
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
                ],
              ),
              AnimatedContainer(
                duration: Duration(
                  milliseconds: 2000
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: NewsSection(),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
