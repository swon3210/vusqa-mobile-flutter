class GridItem {
  String title;
  String image_link;
  String post_link;
  // 이 값에 따라 비디오 재생 아이콘이 등장/등장하지 않음
  bool is_video;

  GridItem({this.title, this.image_link, this.post_link, this.is_video});

}