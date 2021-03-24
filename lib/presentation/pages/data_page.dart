import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_de_posts/bloc/complete_info_bloc.dart';
import 'package:registro_de_posts/data/models/complete_info_model.dart';
import 'package:registro_de_posts/presentation/widgets/mini_post.dart';
import 'package:registro_de_posts/presentation/widgets/title_bar.dart';

class Data extends StatefulWidget {
  Data({Key key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleBar(title: 'Registro de posts'),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Presione sobre algún post para obtener información completa',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.black87,
                    width: double.infinity,
                    height: double.infinity,
                    child: BlocBuilder<CompleteInfoBloc, CompleteInfoState>(
                      builder: (context, state) {
                        return Scrollbar(
                          isAlwaysShown: true,
                          thickness: 50,
                          child: ListView(
                              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                              children:
                                  createMiniPosts(state.completeInfoList)),
                        );
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
