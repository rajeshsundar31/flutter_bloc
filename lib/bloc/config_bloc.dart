import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/model/config.dart';
import 'package:todo_app/service/api_service.dart';

part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  final api_service = CommonApiServices();
  ConfigBloc() : super(ConfigInitial()) {
   on<ConfigFetched>(_getCurrentWeather);
  }

  void _getCurrentWeather(
    ConfigFetched event,
    Emitter<ConfigState> emit,
  ) async {
    emit(ConfigLoading());
    try {
      final weather = await api_service.getResponse('globalconfig');
      emit(ConfigSuccess(globalconfig: weather));
    } catch (e) {
      emit(ConfigFailure(e.toString()));
    }
  }
}
