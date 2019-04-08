import 'package:flutter/material.dart';
import 'package:flutter_star/ui/home/HomePage.dart';
import 'package:flutter_star/ui/home/DetailPage.dart';

void main() {
  // Routes.initRoutes();
  runApp(MaterialApp(
    title: '星球',
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      '/detail': (_) => new DetailPage(),
    },
  ));
}
