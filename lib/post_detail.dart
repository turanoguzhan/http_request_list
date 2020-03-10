import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:httprequestlist/http_service.dart';
import 'http_service.dart';
import 'post.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({@required this.post});

  final HttpService service = new HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(post.title +"'s Detail Page"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () async{
                await service.deletePost(post.id);
                Navigator.of(context).pop();
              },
            )
          ],
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text("Title"),
                      subtitle: Text(post.title),
                    ),
                    ListTile(
                      title: Text("Id"),
                      subtitle: Text("${post.title}"),
                    ),
                    ListTile(
                      title: Text("Body"),
                      subtitle: Text(post.body),
                    ),
                    ListTile(
                      title: Text("User Id"),
                      subtitle: Text("${post.userId}"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
