import 'package:flutter/material.dart';

// 위젯 import
import 'package:vusqa_application/widgets/content_navigation.dart';
import 'package:vusqa_application/widgets/content_list.dart';
import 'package:vusqa_application/widgets/content_list_with_image.dart';
import 'package:vusqa_application/widgets/content_grid.dart';
import 'package:vusqa_application/widgets/category_list.dart';
import 'package:vusqa_application/widgets/image_banner.dart';
import 'package:vusqa_application/widgets/weather_block.dart';

// 클래스 import
import 'package:vusqa_application/classes/list_item.dart';
import 'package:vusqa_application/classes/grid_item.dart';
import 'package:vusqa_application/classes/category_item.dart';
import 'package:vusqa_application/classes/image_banner_item.dart';
import 'package:vusqa_application/classes/wearther_info.dart';


class NewsSection3 extends StatefulWidget {
  @override
  _NewsSection3State createState() => _NewsSection3State();
}

class _NewsSection3State extends State<NewsSection3> {

  // 리스트랑 그리드 안 움직이는 버전도 만들어야겠다.

  // 그리드에서 이미지랑 텍스트 위치 제어할 수 있게 해야겠다.

  List<ListItem> news_list = [
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link2'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link3'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link4'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link5'),
  ];

  List<ListItem> news_list_with_image = [
    ListItem(title: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo', post_link: 'link1', image_src: 'https://images.unsplash.com/photo-1571204829887-3b8d69e4094d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    ListItem(title: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo', post_link: 'link2', image_src: 'https://images.unsplash.com/photo-1571204829887-3b8d69e4094d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
  ];

  List<ListItem> news_list_with_image2 = [
    ListItem(title: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo', post_link: 'link1', image_src: 'https://images.unsplash.com/photo-1571204829887-3b8d69e4094d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    ListItem(title: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo', post_link: 'link2', image_src: 'https://images.unsplash.com/photo-1571204829887-3b8d69e4094d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    ListItem(title: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo', post_link: 'link2', image_src: 'https://images.unsplash.com/photo-1571204829887-3b8d69e4094d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    ListItem(title: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo', post_link: 'link2', image_src: 'https://images.unsplash.com/photo-1571204829887-3b8d69e4094d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
  ];

  WeatherInfo local_weather_info = WeatherInfo(location: 'Santiago', temperature: '32 C', weather: 'Sunny');

  List<GridItem> news_grid_list = [
    GridItem(
      title: 'Ebrio y con licencia suspendida: ',
      image_link: 'https://images.unsplash.com/photo-1546146830-2cca9512c68e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      post_link: 'link',
      is_video: false
    ),
    GridItem(
        title: 'Ebrio y con licencia suspendida: ',
        image_link: 'https://images.unsplash.com/photo-1546146830-2cca9512c68e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
        post_link: 'link',
        is_video: false
    ),
    GridItem(
        title: 'Ebrio y con licencia suspendida: ',
        image_link: 'https://images.unsplash.com/photo-1546146830-2cca9512c68e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
        post_link: 'link',
        is_video: false
    ),
    GridItem(
        title: 'Ebrio y con licencia suspendida: ',
        image_link: 'https://images.unsplash.com/photo-1546146830-2cca9512c68e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
        post_link: 'link',
        is_video: false
    )
  ];

  List<CategoryItem> news_gategory_list = [
    CategoryItem(
      category_name: 'News',
      category_link: 'link'
    ),
    CategoryItem(
      category_name: 'Magazine',
      category_link: 'link'
    ),
    CategoryItem(
        category_name: 'TV',
        category_link: 'link'
    ),
    CategoryItem(
        category_name: 'Series',
        category_link: 'link'
    )
  ];

  List<ImageBannerItem> news_image_banner_list = [
    ImageBannerItem(image_link: 'https://images.unsplash.com/photo-1476170434383-88b137e598bb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', image_desc: 'desc'),
  ];

  List<ListItem> news_list2 = [
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link2'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link3'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link4'),
    ListItem(title: 'Balance Onemi: 12 incendios forestales se mantienen activos...', post_link: 'link5'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0,),
            ContentListWithImage(item_list: news_list_with_image),
            SizedBox(height: 10.0,),
            WeatherBlock(weather_info: local_weather_info),
            SizedBox(height: 10.0,),
            ContentList(item_list: news_list),
            SizedBox(height: 10.0,),
            ImageBanner(image_banner_list: news_image_banner_list),
            SizedBox(height: 10.0,),
            ContentList(item_list: news_list2),
            SizedBox(height: 10.0,),
            ContentGrid(grid_item_list: news_grid_list),
            SizedBox(height: 10.0,),
            ContentListWithImage(item_list: news_list_with_image2, section_title: 'Top Videos',),
            SizedBox(height: 10.0,)
          ],
        ),
      ),
    );
  }
}
