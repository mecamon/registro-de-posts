import 'package:flutter_test/flutter_test.dart';
import 'package:registro_de_posts/data/models/complete_info_model.dart';
import 'package:registro_de_posts/data/models/posts_model.dart';
import 'package:registro_de_posts/data/models/user_model.dart';
import 'package:registro_de_posts/domain/entities/complete_info.dart';
import 'package:registro_de_posts/domain/use_cases/complete_info_builder.dart';

void main() {

  final List<UserModel> userList = [
    UserModel(
      id: 1,
      name: "Leanne Graham",
      username: "Bret",
      email: "Sincere@april.biz"
    )
  ];
  final List<PostsModel> postsList = [
    PostsModel(
      userId: 1,
      id: 1,
      title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      body: "quia et suscipit\nsuscipit recusandae   ut ut quas totam\nnostrum architecto"
    )
  ];
  final List<CompleteInfo> mockCompleteInfo = [
    CompleteInfo(
      userId: userList[0].id,
      postId: postsList[0].id,
      name: userList[0].name,
      username: userList[0].username,
      email: userList[0].email,
      title: postsList[0].title,
      body: postsList[0].body
    )
  ];

  test('checking the type', () {
    //arrange
    final completeInfoBuilder = CompleteInfoBuilder(
      userModelList: userList, 
      postsModelList: postsList
    );

    //act
    final newCompleteInfo = completeInfoBuilder.create();
    
    //assert
    expect(newCompleteInfo, isA<List<CompleteInfoModel>>());

  });

  test('checking values field by field', () {
    //arrange
    final completeInfoBuilder = CompleteInfoBuilder(
      userModelList: userList, 
      postsModelList: postsList
    );

    //act
    final newCompleteInfo = completeInfoBuilder.create();
    
    //assert
    for (var i = 0; mockCompleteInfo.length < i; i++) {
      expect(newCompleteInfo[i], mockCompleteInfo[i]);
    }

  });
}