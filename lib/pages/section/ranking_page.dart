import 'package:flutter/material.dart';

// 위젯 import
import 'package:vusqa_application/widgets/ranking_list_with_image.dart';
import 'package:vusqa_application/widgets/ranking_list_with_icon.dart';
import 'package:vusqa_application/widgets/image_banner.dart';


// 클래스 import
import 'package:vusqa_application/classes/ranking_item.dart';
import 'package:vusqa_application/classes/image_banner_item.dart';




class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  List<RankingItem> ranking_item_list = [
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 100
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 200
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 300
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 400
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 500
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 600
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 700
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 800
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 900
    ),
    RankingItem(
      image_src: 'https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      text: 'Carabineros entrega balance desde inicio de crisis: 9 mil arrestos por desórdenes y 4.900 por saqueo',
      press: 'Biobiochile',
      views: 1000
    ),
  ];

  List<ImageBannerItem> news_image_banner_list = [
    ImageBannerItem(image_link: 'https://images.unsplash.com/photo-1476170434383-88b137e598bb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', image_desc: 'desc'),
  ];

  List<RankingItem> ranking_item_list2 = [
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
    RankingItem(
      text: 'Chelsea vs Westham United',
      views: 1000,
      icon: 'increase'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0,),
            RankingListWithImage(ranking_item_list: ranking_item_list),
            SizedBox(height: 10.0,),
            ImageBanner(image_banner_list: news_image_banner_list),
            SizedBox(height: 10.0,),
            RankingListWithIcon(ranking_item_list: ranking_item_list2),
          ],
        ),
      ),
    );
  }
}
