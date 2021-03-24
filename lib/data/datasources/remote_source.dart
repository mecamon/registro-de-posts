import 'package:http/http.dart' as http;

const headers = {'Content-Type': 'application/json'};

abstract class RemoteSource {
  //This method will return a list of UserModel objects formatted
  //from the Json response in the site https://jsonplaceholder.typicode.com/photos
  Future getAllUsers();

  //This method will return a list of PostsModel objects formatted
  //from the Json response in the site https://jsonplaceholder.typicode.com/photos
  Future getAllPosts();
}


class RemoteSourceImpl implements RemoteSource {
  final http.Client client;

  RemoteSourceImpl(this.client);

  @override
  Future getAllPosts() => 
    _getAllPosts('https://jsonplaceholder.typicode.com/posts');

  @override
  Future getAllUsers() => 
    _getAllUsers('https://jsonplaceholder.typicode.com/users');



  Future _getAllPosts(String url) async {
    final http.Response response = 
      await client.get(Uri.parse(url), headers: headers);
    
    return response;
  }


  Future _getAllUsers(String url) async {
    final http.Response response = 
      await client.get(Uri.parse(url), headers: headers);

    return response;
  }

}