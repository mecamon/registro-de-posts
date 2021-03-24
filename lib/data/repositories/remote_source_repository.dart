import 'dart:convert';

import 'package:registro_de_posts/data/datasources/remote_source.dart';
import 'package:registro_de_posts/data/models/posts_model.dart';
import 'package:registro_de_posts/data/models/user_model.dart';
import 'package:http/http.dart' as http;

class RemoteSourceRepository {
  final RemoteSourceImpl remoteDataSource;

  RemoteSourceRepository({this.remoteDataSource});

  Future<List<PostsModel>> getAllposts() async {

    http.Response response = await remoteDataSource.getAllPosts();
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

  Future<List<UserModel>> getAllUsers() async {

    http.Response response = await remoteDataSource.getAllUsers();
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