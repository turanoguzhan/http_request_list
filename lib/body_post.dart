import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'post.dart';
import 'post_detail.dart';

import 'http_service.dart';

class BodyPost extends StatefulWidget{

  @override
  State createState() {
    return _BodyPostState();
  }
}

class _BodyPostState extends State<BodyPost>{

  final HttpService httpService = HttpService();
  Future<List<Post>> postList ;

  @override
  void initState() {
    postList = httpService.getPost();
  }

  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
        future: postList,
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot){
          if(snapshot.hasData){
            List<Post> postData = snapshot.data;
            return ListView(
              children:
                postData
                    .map((Post p)=> ListTile(
                  title: Text(p.title),
                  subtitle: Text("${p.userId}"),
                  onTap: ()=>Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> PostDetail(
                        post:p,
                      )
                    )
                  ),
                )).toList(),
            );
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      );
  }
}

