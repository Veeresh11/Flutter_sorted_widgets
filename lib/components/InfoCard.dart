import 'package:flutter/material.dart';
import 'package:list_widget_sort/model/Info.dart';


class InfoCard extends StatelessWidget {

  Info _info;

  InfoCard(this._info);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top:8.0, bottom: 8.0),
                  child: new Icon(
                    Icons.info_outline,
                    color: Colors.redAccent,
                    size: 28.0,
                  ),
                ),
                new Text(
                  _info.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                new Text(
                  _info.formattedDate,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

}