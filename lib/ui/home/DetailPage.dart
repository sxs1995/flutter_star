import 'package:flutter/material.dart';
import 'package:flutter_star/model/planet.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage({Key key, this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(planet.name),
            Hero(
              tag: 'planet-hero-${planet.id}',
              child: Image.asset(
                planet.image,
                width: 96.0,
                height: 96.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
