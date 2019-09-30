import 'package:flutter/material.dart';
import 'package:drive_time/theme.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFAB431),
          elevation: 0.0,
          title: Text('ODB Drive Time'),
          leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
            ),
            color: const Color(0xFFDDDDDD),
            onPressed: () {},
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.menu,
              ),
              color: const Color(0xFFDDDDDD),
              onPressed: () {},
            ),
          ],
        ),
        body: new Column(
          children: <Widget>[
            //seek bar

            new Expanded(
              child: new Center(
                child: Container(
                  width: 125.0,
                  height: 125.0,
                  //////////////child: new Image.network(null),
                ),
              ),
            ),
            //visualizer
            new Container(
              width: double.infinity,
              height: 125.0,
            ),

            //song title, artist name and controls
            Container(
                color: accentColor,
                child: new Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
                  child: new Column(
                    children: <Widget>[
                      new RichText(
                          text: new TextSpan(text: '', children: [
                        new TextSpan(
                          text: 'Devo Title\n',
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4.0,
                            height: 1.5,
                          ),
                        ),
                        new TextSpan(
                            text: 'Authors Name\n',
                            style: new TextStyle(
                              color: Colors.white.withOpacity(0.65),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3.0,
                              height: 1.5,
                            ))
                      ])),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: new Row(
                          children: <Widget>[
                            new Expanded(child: new Container()),
                            new IconButton(
                              icon: new Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                                size: 37.0,
                              ),
                              onPressed: () {
                                //todo
                              },
                            ),
                            new Expanded(child: new Container()),
                            new RawMaterialButton(
                              shape: new CircleBorder(),
                              fillColor: Colors.white,
                              splashColor: lightAccentColor,
                              highlightColor: lightAccentColor.withOpacity(0.5),
                              elevation: 10.0,
                              highlightElevation: 0.5,
                              onPressed: () {
                                //todo
                              },
                              child: new Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Icon(
                                  Icons.play_arrow,
                                  color: darkAccentColor,
                                  size: 35,
                                ),
                              ),
                            ),
                            new Expanded(child: new Container()),
                            new IconButton(
                              icon: new Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 37.0,
                              ),
                              onPressed: () {
                                //todo
                              },
                            ),
                            new Expanded(child: new Container()),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        )),
  ));
}
