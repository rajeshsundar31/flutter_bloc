part of 'config_bloc.dart';

@immutable
sealed class ConfigEvent {}


class ConfigFetched extends ConfigEvent {
  
}