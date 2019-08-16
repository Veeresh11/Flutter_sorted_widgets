import 'package:flutter/material.dart';
import 'package:list_widget_sort/pages/FeedPage.dart';
import 'package:list_widget_sort/presenter/FeedPresenter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FeedPage(new FeedPresenter()),
    );
  }
}

