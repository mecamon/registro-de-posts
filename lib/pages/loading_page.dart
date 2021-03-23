import 'package:flutter/material.dart';
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
  final bloc = CompleteInfoBloc();

  @override
  void initState() {
    
    //Generating the models from the event call
    bloc.add(CompleteInfoEvent.GENERATE_MODELS);

    //Listening the value to change the page when it is loaded
    bloc.stream.listen((state) { 
      // print(state.completeInfoList);

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
              color: Colors.white,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
