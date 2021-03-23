import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';


class User extends Equatable {
  @required final int id;
  @required final String name;
  @required final String username;
  @required final String email;

  User({this.id, this.name, this.username, this.email});

  @override
  List<Object> get props => [id, name, username, email];
}