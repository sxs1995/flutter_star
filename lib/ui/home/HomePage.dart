import 'package:flutter/material.dart';
import 'package:flutter_star/ui/home/CradientAppbar.dart';
import 'package:flutter_star/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          GradientAppBar('treva'),
          HomePageBody(),
        ],
      ),
    );
  }
}
