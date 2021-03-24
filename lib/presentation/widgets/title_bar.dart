import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {

  final String title;

  const TitleBar({
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              title,
              style: TextStyle(fontSize: 20, color: Colors.brown[900]),
            )
          ],
        ),
      ),
      color: Colors.green[500],
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.10,
    );
  }
}