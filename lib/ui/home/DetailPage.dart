import 'package:flutter/material.dart';
import 'package:flutter_star/model/planet.dart';
import 'package:flutter_star/ui/home/PlanetRow.dart';
import 'package:flutter_star/ui/text_style.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage({Key key, this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _getBackground() {
      return Container(
        child: Image.network(
          planet.picture,
          fit: BoxFit.cover,
          height: 300.0,
        ),
        constraints: BoxConstraints.expand(height: 300.0),
      );
    }

    Widget _getGradient() {
      return Container(
        margin: EdgeInsets.only(top: 190.0),
        height: 110.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x00736AB7),
              Color(0xFF736AB7),
            ],
            stops: [0.0, 0.9],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
          ),
        ),
      );
    }

    Widget _getContent() {
      final _overviewTitle = 'Overview'.toUpperCase();
      return ListView(
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          PlanetSummary(
            planet,
            horizontal: false,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _overviewTitle,
                  style: Style.headerTextStyle,
                ),
                Separator(),
                Text(
                  planet.description,
                  style: Style.commonTextStyle,
                )
              ],
            ),
          )
        ],
      );
    }

    Widget _getToolbar(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: BackButton(
          color: Colors.white,
        ),
      );
    }

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 18.0,
      color: Color(0xff00c6ff),
    );
  }
}
