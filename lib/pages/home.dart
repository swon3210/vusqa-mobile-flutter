import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vusqa_application/pages/section/news.dart';
import 'package:vusqa_application/pages/section/news2.dart';
import 'package:vusqa_application/pages/section/news3.dart';
import 'package:vusqa_application/pages/section/ranking_page.dart';
import 'package:vusqa_application/widgets/realtime_search_keywords.dart';


// 탭이랑 페이지 뷰 연동시키는 건 좀 나중에 해야겠구만

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    final section_controller = PageController(
      initialPage: 0,
    );

    final List<Widget> section_list = [
      NewsSection(),
      RankingPage()
    ];

    var div_height = MediaQuery.of(context).size.height;

    Color PrimaryColor = Color(0xff40DF6B);
    Color LightGrey = Color(0xffA9A9A9);


    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  floating: true,
                  pinned: true,
                  title: Container(
                    height: 45,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0),
                        prefixIcon: Image.asset('assets/img/logo-new.png'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: PrimaryColor, width: 2.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: PrimaryColor, width: 2.0)
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                      )
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(48),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 27.0),
                      child: TabBar(
                        labelColor: PrimaryColor,
                        unselectedLabelColor: LightGrey,
                        isScrollable: true,
                        indicatorColor: PrimaryColor,
//                        labelPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        onTap: (index) {
                          setState(() {
                            switch (index) {
                              case 0:
                                PrimaryColor = Color(0xffff57222);
                                break;
                              case 1:
                                PrimaryColor = Color(0xff3f51b5);
                                break;
                              default:
                                break;
                            }
                          });
                        },
                        tabs: <Widget>[
                          Container(
                            child: Tab(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Headline'.toUpperCase(),

                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              )
                            ),
                          ),
                          Container(
                            child: Tab(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'World'.toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 12.0
                                  ),
                                ),
                              )
                            ),
                          ),
                          Container(
                            child: Tab(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sports'.toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 12.0
                                  ),
                                ),
                              )
                            ),
                          ),
                          Container(
                            child: Tab(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Money'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 12.0
                                  ),
                                ),
                              )
                            ),
                          ),
                          Container(
                            child: Tab(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                'Movie'.toUpperCase(),
                                 style: TextStyle(
                                    fontSize: 12.0
                                  ),
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ),
              ];
            },
            body: Center(
              child: Container(
                child: PageView.builder(
                  controller: section_controller,
                  itemBuilder: (context, position) {
                    return section_list[position];
                  },
                  itemCount: section_list.length,
                  onPageChanged: (page) {
                    print(page);
                  },
                )
              ),
            ),
          ),

//        body: Container(
//          child: PageView.builder(
//            controller: section_controller,
//            itemBuilder: (context, position) {
//              return section_list[position];
//            },
//            itemCount: section_list.length,
//            onPageChanged: (page) {
//              print(page);
//            },
//          ),
//        )
      ),
    );
  }
}
