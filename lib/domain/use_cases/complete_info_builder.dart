import 'package:meta/meta.dart';
import 'package:registro_de_posts/data/models/complete_info_model.dart';
import 'package:registro_de_posts/data/models/posts_model.dart';
import 'package:registro_de_posts/data/models/user_model.dart';

class CompleteInfoBuilder {
  @required final List<UserModel> userModelList;
  @required final List<PostsModel> postsModelList;

  CompleteInfoBuilder({this.userModelList, this.postsModelList});

  List<CompleteInfoModel> create() {
    List<CompleteInfoModel> newCompleteInfo = [];

    for(PostsModel post in postsModelList) {
      for(UserModel user in userModelList) {
        if(post.userId == user.id) {
          newCompleteInfo.add(
            CompleteInfoModel(
              userId: user.id,
              postId: post.id,
              name: user.name,
              username: user.username,
              email: user.email,
              title: post.title,
              body: post.body
            ),
          );
        }
      }
    }

    return newCompleteInfo;
  }

}