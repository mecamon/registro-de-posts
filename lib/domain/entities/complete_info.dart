import 'package:meta/meta.dart';

class CompleteInfo {
  @required final int userId;
  @required final int postId;
  @required final String name;
  @required final String username;
  @required final String email;
  @required final String title;
  @required final String body;

  CompleteInfo({
    this.userId,
    this.postId, 
    this.name, 
    this.username, 
    this.email,
    this.title,
    this.body
  });
}