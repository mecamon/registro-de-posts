import 'package:meta/meta.dart';
import 'package:registro_de_posts/domain/entities/user.dart';

class UserModel extends User {
  @required final int id;
  @required final String name;
  @required final String username;
  @required final String email;

  UserModel({this.id, this.name, this.username, this.email})
      : super(id: id, name: name, username: username, email: email);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'], 
      name: json['name'], 
      username: json['username'], 
      email: json['email']
    );
  }
}
