import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:registro_de_posts/data/datasources/remote_source.dart';
import 'package:registro_de_posts/data/models/complete_info_model.dart';
import 'package:registro_de_posts/data/repositories/remote_source_repository.dart';
import 'package:http/http.dart' as http;
import 'package:registro_de_posts/domain/use_cases/complete_info_builder.dart';

part 'complete_info_event.dart';
part 'complete_info_state.dart';

class CompleteInfoBloc extends Bloc<CompleteInfoEvent, CompleteInfoState> {

  final remoteSource = RemoteSourceRepository(remoteDataSource: 
    RemoteSourceImpl(http.Client()));

  CompleteInfoBloc() : super(CompleteInfoState(
    completeInfoList: []
  ));


  @override
  Stream<CompleteInfoState> mapEventToState(
    CompleteInfoEvent event,
  ) async* {
    switch(event) {
      case CompleteInfoEvent.GENERATE_MODELS:
        state.completeInfoList = CompleteInfoBuilder(
          userModelList: await remoteSource.getAllUsers(),
          postsModelList: await remoteSource.getAllposts(),
        ).create();

        yield state;
        break;
      default:
        throw UnimplementedError();
    }
  }
}
