import 'package:flutter/material.dart';
import 'package:registro_de_posts/data/models/complete_info_model.dart';
import 'package:registro_de_posts/presentation/widgets/title_bar.dart';
import 'package:registro_de_posts/utils/constants.dart';

class SelectedPost extends StatefulWidget {
  final CompleteInfoModel postFromDataPage;

  SelectedPost({this.postFromDataPage, key}) : super(key: key);

  @override
  _SelectedPostState createState() => _SelectedPostState();
}

class _SelectedPostState extends State<SelectedPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            TitleBar(title: 'Selected post'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.brown[900],
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:
                            generateSelectedPostInfo(widget.postFromDataPage),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  List<Expanded> generateSelectedPostInfo(CompleteInfoModel complete) {
    List<Expanded> linesOfInfo = [];

    linesOfInfo.add(linesOfInfoFactory('Autor', complete.name));
    linesOfInfo.add(linesOfInfoFactory('Usuario', complete.username));
    linesOfInfo.add(linesOfInfoFactory('Email', complete.email));
    linesOfInfo.add(columnOfInfo('Título', complete.title, 3));
    linesOfInfo.add(columnOfInfo('Contenido', complete.body, 6));

    return linesOfInfo;
  }

  Expanded linesOfInfoFactory(String label, String content) {
    return Expanded(
      child: Row(
        children: [
          Text(
            '$label: ',
            style: kPostTextHead,
          ),
          Text(content, style: kPostBodyHead),
        ],
      ),
    );
  }

  Expanded columnOfInfo(String label, String content, flexNumber) {
    return Expanded(
      flex: flexNumber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: kPostTextHead,
          ),
          Text(content, style: kPostBodyHead),
        ],
      ),
    );
  }
}
