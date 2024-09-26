part of 'data_validation_bloc.dart';

class DataValidationEvent {
  const DataValidationEvent();
}

class UpdateUsernameEvent extends DataValidationEvent {
  final String? username;

  const UpdateUsernameEvent({this.username});
}

class UpdatePasswordEvent extends DataValidationEvent {
  final String? password;

  const UpdatePasswordEvent({this.password});
}
