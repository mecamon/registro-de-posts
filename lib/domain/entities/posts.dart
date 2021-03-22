import 'package:meta/meta.dart';


class Posts {
  @required final int id;
  @required final int userId;
  @required final String title;
  @required final String body;

  Posts({this.id, this.userId, this.title, this.body});
}