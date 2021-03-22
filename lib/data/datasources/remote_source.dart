import 'dart:convert';
import 'package:registro_de_posts/data/models/posts_model.dart';
import 'package:registro_de_posts/data/models/user_model.dart';
import 'package:http/http.dart' as http;

const headers = {'Content-Type': 'application/json'};

abstract class RemoteSource {
  //This method will return a list of UserModel objects formatted
  //from the Json response in the site https://jsonplaceholder.typicode.com/photos
  Future<List<UserModel>> getAllUsers();

  //This method will return a list of PostsModel objects formatted
  //from the Json response in the site https://jsonplaceholder.typicode.com/photos
  Future<List<PostsModel>> getAllPosts();
}


class RemoteSourceImpl implements RemoteSource {
  final http.Client client;

  RemoteSourceImpl(this.client);

  @override
  Future<List<PostsModel>> getAllPosts() => 
    _getAllPosts('https://jsonplaceholder.typicode.com/posts');

  @override
  Future<List<UserModel>> getAllUsers() => 
    _getAllUsers('https://jsonplaceholder.typicode.com/users');



  Future<List<PostsModel>> _getAllPosts(String url) async {

    final response = await client.get(Uri.parse(url), headers: headers);
    final List<PostsModel> resultingList = [];

    if (response.statusCode == 200) {
      List data = json.decode(response.body);

      for(var jsonItem in data) {
        final post = PostsModel.fromJson(jsonItem);
        resultingList.add(post);
      }
    }
    return resultingList;
  }


  Future<List<UserModel>> _getAllUsers(String url) async {

    final response = await client.get(Uri.parse(url), headers: headers);
    final List<UserModel> resultingList = [];

    if (response.statusCode == 200) {
      List data = json.decode(response.body);

      for(var jsonItem in data) {
        final user = UserModel.fromJson(jsonItem);

        resultingList.add(user);
      }
    }
    return resultingList;
  }

}