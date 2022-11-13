import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {

  final FocusNode? node;
  final TextEditingController? controller;

  const NameInput({
    Key? key,
    required this.node,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, bottom: 10.0, left: 25.0, right: 25.0),
      child: TextField(
        focusNode: node,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black),
        decoration: const InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 22.0,
            ),
            hintText: "Enter name",
            hintStyle: TextStyle(
                fontSize: 18.0)),
      ),
    );
  }
}
