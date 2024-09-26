import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_validation/presentation/data_validation/bloc/data_validation_bloc.dart';
import 'package:flutter_data_validation/widgets/custom_textfield.dart';
import 'package:flutter_data_validation/widgets/gaps.dart';

class DataValidationScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final DataValidationBloc _dataValidationBloc = DataValidationBloc();

  DataValidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _dataValidationBloc,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Gaps.gapsH10,
                  CustomTextfield(
                    textEditingController: _usernameController,
                    labelText: "Username",
                    onChanged: (value) {
                      _dataValidationBloc.add(UpdateUsernameEvent(username: value));
                    },
                  ),
                  Gaps.gapsH10,
                  CustomTextfield(
                    textEditingController: _passwordController,
                    labelText: "Password",
                    onChanged: (value) {
                      _dataValidationBloc.add(UpdatePasswordEvent(password: value));
                    },
                  ),
                  Gaps.gapsH10,
                  BlocBuilder<DataValidationBloc, DataValidationState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: state.isFormValid() ? () {} : null,
                        child: const Text("Validate"),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
