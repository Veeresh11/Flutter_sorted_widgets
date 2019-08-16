import 'package:flutter/material.dart';
import 'package:list_widget_sort/components/InfoCard.dart';
import 'package:list_widget_sort/components/StatsCard.dart';
import 'package:list_widget_sort/components/ImageCard.dart';
import 'package:list_widget_sort/model/ListItem.dart';
import 'package:list_widget_sort/presenter/FeedPresenter.dart';
import 'package:list_widget_sort/model/Stats.dart';
import 'package:list_widget_sort/model/Message.dart';
import 'package:list_widget_sort/model/Info.dart';



class FeedViewInterface {

  void updateFeedList(List<ListItem> lstItems){}
  void updateIsLoading(bool isLoading){}

}


class _feedPage extends State<FeedPage> implements FeedViewInterface {

  bool _isLoading;
  List<ListItem> _lstItems;

  @override
  void initState(){
    super.initState();
    _isLoading = true;
    widget.presenter.feedView = this;
    widget.presenter.fetchData();
  }

  @override
  void updateIsLoading(bool isLoading) {
    if(mounted){
      this._isLoading = isLoading;
    }
  }

  @override
  void updateFeedList(List<ListItem> lstItems) {
    if(mounted){
      this._lstItems = lstItems;
    }
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feed"),
      ),
      body: _isLoading
          ? new Center(
            child: new CircularProgressIndicator(),
          )
          : new ListView.builder(
          itemCount: _lstItems.length,
          itemBuilder: (context, index) {
            if(_lstItems[index] is Message){
              //Downcast object and pass to the widget
              Message msg = _lstItems[index] as Message;
              return ImageCard(msg);
            }else if(_lstItems[index] is Stats){
              //Downcast object and pass to the widget
              Stats stat = _lstItems[index] as Stats;
              return StatsCard(stat);
            }else if(_lstItems[index] is Info){
              //Downcast object and pass to the widget
              Info info = _lstItems[index] as Info;
              return InfoCard(info);
            }
          }
      ),
    );
  }


}


class FeedPage extends StatefulWidget {

  final FeedPresenterInterface presenter;

  FeedPage(this.presenter, {Key key}) : super(key: key);

  @override
  _feedPage createState() => new _feedPage();

}