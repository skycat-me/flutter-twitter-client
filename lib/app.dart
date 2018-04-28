import 'package:flutter/material.dart';
import 'package:flutter_twitter_client/pages/home.dart';
import 'package:flutter_twitter_client/theme.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => new MaterialApp(
        title: 'Flutter Demo',
        theme: themeData,
        home: new HomePage(),
      );
}
