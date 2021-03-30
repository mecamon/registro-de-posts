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
    return Row(
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
    );
  }
}
