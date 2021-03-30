import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_de_posts/presentation/pages/data_page.dart';
import 'package:registro_de_posts/presentation/pages/selected_post_page.dart';

import 'bloc/complete_info_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final bloc = CompleteInfoBloc();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider.value(
          value: bloc,
          child: Data()
        ),
        '/selected': (context) => BlocProvider.value(
          value: bloc,
          child: SelectedPost()
        ),
      },
    );
  }
}



