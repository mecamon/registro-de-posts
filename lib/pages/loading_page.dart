import 'package:flutter/material.dart';
import 'package:registro_de_posts/data/datasources/remote_source.dart';
import 'package:registro_de_posts/data/repositories/remote_source_repository.dart';
import 'package:http/http.dart' as http;

class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  final client = http.Client();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextButton(
          onPressed: () async {
            final remoteSource = RemoteSourceImpl(client);
            final remoteRepo = RemoteSourceRepository(remoteDataSource: remoteSource);

            final result = await remoteRepo.getAllusers();

            print(result);
          },
          child: Text('Hello from Loading Page')),
      )
    );
  }
}