

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 
void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Hello Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new Scaffold (
        appBar: new AppBar(
          title: new Text('Startup Name Generator'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpg',
              height: 240,
              fit: BoxFit.cover,
            ),
            TitleSection(),
            ButtonSection(),
            TextSection(),
          ],
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: new Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(Icons.call, "CALL", context),
          _buildButtonColumn(Icons.near_me, "ROUTE", context),
          _buildButtonColumn(Icons.share, "SHARE", context),
        ],
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String label, BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(icon, color: color),
        new Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(32),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: new Text("Oeschinen Lake Campground",
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text('Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );
  }
}