import 'package:meta/meta.dart';
import 'package:registro_de_posts/domain/entities/complete_info.dart';

class CompleteInfoModel extends CompleteInfo {
  @required final int userId;
  @required final int postId;
  @required final String name;
  @required final String username;
  @required final String email;
  @required final String title;
  @required final String body;

  CompleteInfoModel({
    this.userId,
    this.postId, 
    this.name, 
    this.username, 
    this.email,
    this.title,
    this.body
  }) : super(
    userId: userId,
    postId: postId,
    name: name,
    username: username,
    email: email,
    title: title,
    body: body
  );
}