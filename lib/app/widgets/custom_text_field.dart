import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final String Function(String?) onValidate;
  final IconData prefixIconData;
  final Color? iconColor;
  final bool? isObscure;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.onValidate,
    required this.prefixIconData,
    this.isObscure,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure ?? false,
      validator: onValidate,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIconData,color: iconColor??Color.fromARGB(255, 0, 76, 232),),
      ),
    );
  }
}
