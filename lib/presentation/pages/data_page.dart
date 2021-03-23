import 'package:flutter/material.dart';
import 'package:registro_de_posts/utils/constants.dart';

class Data extends StatefulWidget {
  Data({Key key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.note_rounded,
                        size: 40,
                        color: Colors.brown[900],
                      ),
                    ),
                    Text(
                      'Registro de posts',
                      style: TextStyle(fontSize: 20, color: Colors.brown[900]),
                    )
                  ],
                ),
              ),
              color: Colors.green[500],
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                  'Presione sobre algún post para obtener información completa'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.brown[900],
                    width: double.infinity,
                    height: double.infinity,
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                      children: [
                        MiniPost(postAutor: 'Random autor', postBody: 'Random body'),
                        MiniPost(postAutor: 'Random autor', postBody: 'Random body'),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MiniPost extends StatelessWidget {
  final String postAutor;
  final String postBody;

  const MiniPost({
    this.postAutor,
    this.postBody,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Text('Autor del post: ', style: kMiniPostTextHead),
                Text(postAutor, style: kMiniPostBodyHead),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Text('Título: ', style: kMiniPostTextHead),
                Text(postBody, style: kMiniPostBodyHead),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(height: 1.5, color: Colors.white),
          )
        ],
      ),
    );
  }
}
