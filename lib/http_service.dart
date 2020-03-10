import 'dart:convert';
import 'package:http/http.dart' as http;
import 'post.dart';

class HttpService{

  // final String countrl_url = "https://www.superonline.net/location/county.json"; // cityId
  final String post_url ="https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPost() async {
    http.Response response = await http.get(post_url);

    if(response.statusCode==200){
      List<dynamic> body = json.decode(response.body);

      List<Post> postList = body.map((dynamic item)=>Post.fromJson(item)).toList();

      return postList;
    }else {
      throw "Can't get posts";
    }
  }

  Future<void> deletePost(int id) async {
    http.Response response = await http.delete("$post_url/$id");

    if(response.statusCode == 200){
      print("Object Deleted !!!");
    }else{
      throw "Can't deleted ";
    }
  }
}
