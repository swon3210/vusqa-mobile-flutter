import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // 초기 로딩으로 데이터를 가져오는 함수 정의

  // initState 와 동시에 이루어지도록 정의

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 80.0
        ),
      ),
    );
  }
}
