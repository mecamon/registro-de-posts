import 'package:flutter/material.dart';
import 'package:registro_de_posts/data/models/complete_info_model.dart';
import 'package:registro_de_posts/utils/constants.dart';

class MiniPost extends StatelessWidget {
  final CompleteInfoModel completeInfo;

  const MiniPost({
    this.completeInfo,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Text('Autor: ', style: kMiniPostTextHead),
                Text(completeInfo.name, style: kMiniPostBodyHead),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Título: ', style: kMiniPostTextHead),
                Expanded(
                  child: Text(
                    completeInfo.title,
                    style: kMiniPostBodyHead,
                    overflow: TextOverflow.fade,
                  ),
                ),
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