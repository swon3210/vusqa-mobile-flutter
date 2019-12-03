import 'package:vusqa_application/classes/wearther_info.dart';
import 'package:flutter/material.dart';

class WeatherBlock extends StatelessWidget {

  WeatherInfo weather_info;

  WeatherBlock({this.weather_info});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          contentPadding: EdgeInsets.all(14.0),
          leading: Container(
            margin: EdgeInsets.only(left: 5.0),
            child: Image.asset('assets/img/sun.png')
          ),
          title: Text(
            weather_info.location,
            style: TextStyle(
                fontSize: 20.0
            ),
          ),
          subtitle: Text(
            weather_info.weather,
            style: TextStyle(
                fontSize: 12.0
            ),
          ),
          trailing: Container(
            margin: EdgeInsets.only(right: 35.0),
            child: Text(
              weather_info.temperature,
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
          ),
        ),
      ),
    );
  }
}
