part of 'config_bloc.dart';

@immutable
sealed class ConfigState {}

final class ConfigInitial extends ConfigState {}

final class ConfigSuccess extends ConfigState {

  final Globalconfig globalconfig;

  ConfigSuccess({ required this.globalconfig});
}


final class ConfigFailure extends ConfigState {

  final String error;

  ConfigFailure(this.error);

}

final class ConfigLoading extends ConfigState {} 