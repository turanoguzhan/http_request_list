import 'package:flutter/material.dart';
import 'package:httprequestlist/post_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Http Request Example with List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: PostRoute(),
    );
  }

}
