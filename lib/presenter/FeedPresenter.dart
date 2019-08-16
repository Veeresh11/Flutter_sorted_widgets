import 'package:list_widget_sort/pages/FeedPage.dart';
import 'package:list_widget_sort/model/ListItem.dart';
import 'package:list_widget_sort/model/Info.dart';
import 'package:list_widget_sort/model/Message.dart';
import 'package:list_widget_sort/model/Stats.dart';


class FeedPresenterInterface {

  set feedView(FeedViewInterface value){}
  void fetchData(){}

}


class FeedPresenter implements FeedPresenterInterface {

  FeedViewInterface _feedView;

  @override
  set feedView(FeedViewInterface value) {
    _feedView = value;
  }

  @override
  void fetchData(){
    //Harcoded values. Normally this can be retrieved from a web service
    List<Message> lstMsg = new List<Message>();
    lstMsg.add(new Message(id: 1, title: "Title", content: "long text long text long text long text long text", created: new DateTime.utc(2019, 6, 19), attachment: "https://picsum.photos/id/1/800/500"));
    lstMsg.add(new Message(id: 2, title: "Title", content: "long text long text long text long text long text", created: new DateTime.utc(2019, 3, 25), attachment: "https://picsum.photos/id/102/800/500"));

    List<Info> lstInfo = new List<Info>();
    lstInfo.add(new Info(id: 1, text: "Important Note 1", created: new DateTime.utc(2019, 7, 2)));
    lstInfo.add(new Info(id: 2, text: "Important Note 2", created: new DateTime.utc(2019, 6, 17)));

    List<Stats> lstStats = new List<Stats>();
    lstStats.add(new Stats(id: 1, created: new DateTime.utc(2019, 8, 9), stat1: "7L", stat2: "10", stat3: "5g"));
    lstStats.add(new Stats(id: 2, created: new DateTime.utc(2019, 3, 8), stat1: "3L", stat2: "3", stat3: "2g"));


    //list to sort and display
    List<ListItem> lstAllItems = new List<ListItem>();
    //upcast all objects and add to the same list
    lstAllItems.addAll(lstMsg);
    lstAllItems.addAll(lstInfo);
    lstAllItems.addAll(lstStats);

    //sort the list
    lstAllItems.sort((a, b) => b.createdOn.compareTo(a.createdOn));

    //update the view
    _feedView.updateIsLoading(false);
    _feedView.updateFeedList(lstAllItems);
  }

}