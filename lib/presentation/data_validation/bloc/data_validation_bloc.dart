import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'data_validation_event.dart';
part 'data_validation_state.dart';
part 'data_validation_bloc.mapper.dart';

class DataValidationBloc extends Bloc<DataValidationEvent, DataValidationState> {
  DataValidationBloc() : super(const DataValidationState()) {
    on<UpdateUsernameEvent>((event, emit) {
      emit(state.copyWith(username: event.username));
    });

    on<UpdatePasswordEvent>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
  }
}
