import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:registro_de_posts/data/models/posts_model.dart';
import '../../mocks/jsonReader.dart';

void main() {
  test('converting a valid json into a PostsModel instance', () {
    //arrange
    final Map<String, dynamic> jsonMap = 
      jsonDecode(jsonReader('user_mock.json'));

    //act
    final result = PostsModel.fromJson(jsonMap);

    //assert
    expect(result, isA<PostsModel>());
  });
}