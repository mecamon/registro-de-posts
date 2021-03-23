import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  Data({Key key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Push me text'),
      ),
    );
  }
}
