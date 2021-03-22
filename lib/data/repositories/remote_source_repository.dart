import 'package:registro_de_posts/data/datasources/remote_source.dart';
import 'package:registro_de_posts/data/models/posts_model.dart';
import 'package:registro_de_posts/data/models/user_model.dart';

class RemoteSourceRepository {
  final RemoteSourceImpl remoteDataSource;

  RemoteSourceRepository({this.remoteDataSource});

  Future<List<PostsModel>> getAllposts() async {
    return await remoteDataSource.getAllPosts();
  }

  Future<List<UserModel>> getAllusers() async {
    return await remoteDataSource.getAllUsers();
  }

}