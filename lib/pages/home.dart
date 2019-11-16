import 'package:flutter/material.dart';
import 'package:vusqa_application/pages/section/news.dart';
import 'package:vusqa_application/pages/section/news2.dart';
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
      NewsSection2()
    ];

    var div_height = MediaQuery.of(context).size.height;

    Color PrimaryColor = Colors.white;


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
                  expandedHeight: 120.0,
                  floating: true,
                  pinned: true,
                  title: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo[200], width: 2.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo, width: 2.0)
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        color: Colors.grey
                      ),
                    )
                  ),
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.grey,
                    indicatorWeight: 6.0,
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
                      Tab(
                        child: Container(
                          child: Text(
                            'News',
                            style: TextStyle(
                              color: Colors.grey, fontSize: 15.0
                            ),
                          ),
                        )
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'Ranking',
                            style: TextStyle(
                                color: Colors.grey, fontSize: 15.0
                            ),
                          ),
                        )
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'Culture',
                            style: TextStyle(
                                color: Colors.grey, fontSize: 15.0
                            ),
                          ),
                        )
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'TV',
                            style: TextStyle(
                              color: Colors.grey, fontSize: 15.0
                            ),
                          ),
                        )
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                          'Shopping',
                           style: TextStyle(
                              color: Colors.grey, fontSize: 15.0
                            ),
                          ),
                        )
                      )
                    ],
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
