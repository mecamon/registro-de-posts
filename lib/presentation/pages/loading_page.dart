import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:registro_de_posts/bloc/complete_info_bloc.dart';
import 'package:http/http.dart' as http;

class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  final client = http.Client();

  @override
  void initState() {
    
    //Generating the models from the event call
    BlocProvider.of<CompleteInfoBloc>(context)
      .add(CompleteInfoEvent.GENERATE_MODELS);

    BlocProvider.of<CompleteInfoBloc>(context).stream.listen((state) { 
      if(state.completeInfoList.length > 0) {
        Navigator.pushNamed(context, '/data');
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Loading data...',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SpinKitDoubleBounce(
              color: Colors.black26,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
