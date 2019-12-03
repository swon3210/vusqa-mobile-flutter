import 'package:flutter/material.dart';
import 'package:vusqa_application/classes/image_banner_item.dart';

class ImageBanner extends StatelessWidget {

  List<ImageBannerItem> image_banner_list;

  ImageBanner({this.image_banner_list});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // 이거 따로 클래스를 만들어야 할까?
        ...image_banner_list.map((x) {
          return Container(
            child: Image.network(
              x.image_link,
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            )
          );
        }).toList()
      ],
    );
  }
}
