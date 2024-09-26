part of 'data_validation_bloc.dart';

@MappableClass()
class DataValidationState with DataValidationStateMappable {
  final String username;
  final String password;

  const DataValidationState({
    this.username = "",
    this.password = "",
  });

  bool isFormValid() {
    return username.isNotEmpty && password.isNotEmpty;
  }
}
