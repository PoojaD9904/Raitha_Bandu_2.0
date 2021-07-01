import 'package:flutter/material.dart';

import '../weather.dart';
import 'navigationDrawer.dart';
class WeatherPredictionPage extends StatelessWidget {
  static const String routeName = '/eventPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Weather Prediction"),
        ),
        drawer: navigationDrawer(),
        body: Center(
        child: RaisedButton(
          onPressed:(){
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => MyApp()));
          } ,
        ),)
         );
  }
}