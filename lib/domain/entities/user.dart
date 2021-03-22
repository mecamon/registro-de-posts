import 'package:meta/meta.dart';


class User {
  @required final int id;
  @required final String name;
  @required final String username;
  @required final String email;

  User({this.id, this.name, this.username, this.email});
}