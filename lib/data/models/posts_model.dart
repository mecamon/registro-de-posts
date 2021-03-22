import 'package:meta/meta.dart';
import 'package:registro_de_posts/domain/entities/posts.dart';

class PostsModel extends Posts {
  @required final int id;
  @required final int userId;
  @required final String title;
  @required final String body;

  PostsModel({this.id, this.userId, this.title, this.body}): 
    super(id: id, userId: userId, title: title, body: body);

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }

}