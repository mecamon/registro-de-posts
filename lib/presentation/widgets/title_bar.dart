import 'package:flutter/material.dart';
import 'package:registro_de_posts/utils/constants.dart';

class TitleBar extends StatelessWidget {

  final String title;

  const TitleBar({
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
              child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.note_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                Text(
                  title,
                  style: kTitleTextStyle,
                )
              ],
            ),
          ),
          color: Colors.black87,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.10,
        ),
      ),
    );
  }
}