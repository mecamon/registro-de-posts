import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Posts extends Equatable{
  @required final int id;
  @required final int userId;
  @required final String title;
  @required final String body;

  Posts({this.id, this.userId, this.title, this.body});

  @override
  List<Object> get props => [id, userId, title, body];
}