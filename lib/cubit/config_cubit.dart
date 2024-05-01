import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/service/api_service.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit() : super(ConfigInitial());

  void getconfig(){
    final res = CommonApiServices().getResponse('globals');
    emit(res as ConfigState);
    print(res);
  }
}
