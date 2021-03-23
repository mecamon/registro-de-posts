import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_de_posts/bloc/complete_info_bloc.dart';
import 'package:registro_de_posts/data/models/complete_info_model.dart';
import 'package:registro_de_posts/presentation/widgets/mini_post.dart';

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
                    child: BlocBuilder<CompleteInfoBloc, CompleteInfoState>(
                      builder: (context, state) {
                        return ListView(
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                            children: createMiniPosts(state.completeInfoList));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<MiniPost> createMiniPosts(List<CompleteInfoModel> completes) {
    final List<MiniPost> allPost = [];

    for (CompleteInfoModel complete in completes) {
      allPost.add(MiniPost(
        completeInfo: complete,
      ));

      print(complete);
    }

    return allPost;
  }
}
