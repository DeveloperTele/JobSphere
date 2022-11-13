import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {

  final String? hint;
  final FocusNode? node;
  final TextEditingController? controller;

  const PasswordInput({
    Key? key,
    this.hint = 'Enter Password',
    required this.node,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
          left: 25.0,
          right: 25.0),
      child: TextField(
        focusNode: node,
        controller: controller,
        obscureText: true,
        style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black),
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: const Icon(
              Icons.lock,
              color: Colors.black,
              size: 22.0,
            ),
            hintText: hint,
            hintStyle: const TextStyle(
                fontSize: 18.0
            )),
      ),
    );
  }
}
