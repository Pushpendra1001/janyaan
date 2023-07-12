// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class login_field extends StatelessWidget {
  final controller;
  final String hint_text;
  final bool obscuretext;
  final String labelText;

  const login_field({
    super.key,
    this.controller,
    required this.hint_text,
    required this.labelText,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint_text,
          labelText: labelText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade700),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
        obscureText: obscuretext,
      ),
    );
  }
}
