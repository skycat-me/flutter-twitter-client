import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// PAGEの名前
  final _pageName = 'Flutter de Twitter';

  /// タブを定義
  final List<Tab> _tabMenu = [
    new Tab(
      text: 'HOME',
      icon: new Icon(Icons.home),
    ),
    new Tab(
      text: 'SEARCH',
      icon: new Icon(Icons.search),
    ),
    new Tab(
      text: 'Notification',
      icon: new Icon(Icons.notifications),
    ),
    new Tab(
      text: 'Message',
      icon: new Icon(Icons.message),
    ),
  ];

  @override
  Widget build(BuildContext context) => new DefaultTabController(
        length: _tabMenu.length,
        child: new Scaffold(
          appBar: new AppBar(
            leading: new Icon(Icons.settings),
            title: Text(_pageName),
            bottom: new TabBar(tabs: _tabMenu),
            actions: <Widget>[new Icon(Icons.edit)],
          ),
          body: new TabBarView(children: <Widget>[
            new ListView(children: _tabMenu),
            new Text('SEARCH'),
            new Text('Notification'),
            new Text('Message'),
          ]),
        ),
      );
}
