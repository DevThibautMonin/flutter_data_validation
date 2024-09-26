import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String)? onChanged;
  final String? labelText;

  const CustomTextfield({
    super.key,
    required this.textEditingController,
    this.onChanged,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
