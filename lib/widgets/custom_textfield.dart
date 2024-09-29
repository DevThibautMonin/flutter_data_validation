import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String)? onChanged;
  final String? labelText;
  final bool isPassword;

  const CustomTextfield({
    super.key,
    required this.textEditingController,
    this.onChanged,
    this.labelText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        obscureText: isPassword,
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
