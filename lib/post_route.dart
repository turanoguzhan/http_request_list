
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'body_post.dart';

class PostRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Post Page"),
      ),
      body: BodyPost(),
    );
  }
}