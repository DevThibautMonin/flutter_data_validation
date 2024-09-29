import 'package:flutter/material.dart';
import 'package:flutter_data_validation/presentation/data_validation/ui/data_validation_screen.dart';
import 'package:flutter_data_validation/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: DataValidationScreen(),
    );
  }
}
