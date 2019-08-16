import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:list_widget_sort/model/Message.dart';

class ImageCard extends StatelessWidget {

  Message _msg;

  ImageCard(this._msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
          margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
          elevation: 2.0,
          child: new Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0, bottom: 5.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: new Icon(
                          FontAwesomeIcons.rssSquare,
                          color: Colors.indigo,
                          size: 40.0,
                        )
                    ),
                    new Flexible(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              child: new Text(
                                _msg.title,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            new Container(
                              padding: EdgeInsets.only(top: 0.5),
                              child: new Text(
                                _msg.formattedDate,
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: Container(
                        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: new Text(
                          _msg.content,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                _msg.attachment != null && _msg.attachment != '' ?
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: new CachedNetworkImage(
                          imageUrl: _msg.attachment,
                          placeholder: (context, url) => new CircularProgressIndicator(),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                        ),
                      ),
                    )
                  ],
                )
                    : new Container()
              ],
            ),
          )
      ),
    );
  }
}