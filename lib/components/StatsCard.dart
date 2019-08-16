import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:list_widget_sort/model/Stats.dart';

class StatsCard extends StatelessWidget {

  Stats _stats;

  StatsCard(this._stats);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: new Text("Statistics",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: new BoxDecoration(
                      color: Colors.orangeAccent,
                      shape: BoxShape.circle,
                    ),
                    child: new Center(
                      child: new Column(
                        children: <Widget>[
                          new Icon(
                            FontAwesomeIcons.beer,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          new Text(
                            _stats.stat1,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: new Center(
                        child: new Column(
                          children: <Widget>[
                            new Icon(
                              FontAwesomeIcons.smoking,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            new Text(
                              _stats.stat2,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: new BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                    child: new Center(
                        child: new Column(
                          children: <Widget>[
                            new Icon(
                              FontAwesomeIcons.cannabis,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            new Text(
                              _stats.stat3,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
              new Text(
                _stats.formattedDate,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
    );
  }

}