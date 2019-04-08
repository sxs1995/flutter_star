import 'package:flutter/material.dart';
import 'package:flutter_star/ui/home/PlanetRow.dart';
import 'package:flutter_star/model/planet.dart';

class HomePageBody extends StatelessWidget {
  final Widget child;

  HomePageBody({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: SliverChildBuilderDelegate(
                  (context, index) => PlanetRow(planets[index]),
                  childCount: planets.length,
                ),
              ),
            )
          ],
        ),
      ),
      // child: ListView.builder(
      //   itemCount: planets.length,
      //   itemExtent: 152.0,
      //   itemBuilder: (BuildContext context, index) {
      //     return PlanetRow(planets[index]);
      //   },
      // ),
    );
  }
}
