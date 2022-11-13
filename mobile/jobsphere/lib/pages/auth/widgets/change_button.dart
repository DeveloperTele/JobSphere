import 'package:flutter/material.dart';

class ChangeButton extends StatelessWidget {

  final String? text;
  final VoidCallback? onPressed;

  const ChangeButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          gradient: LinearGradient(
              colors: [Colors.white, Colors.white],
              begin: FractionalOffset(0.2, 0.2),
              end: FractionalOffset(0.5, 0.5),
              stops: [0.1, 0.5],
              tileMode: TileMode.clamp)),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.white70,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 42.0
          ),
          child: Text(text!,
            style: const TextStyle(
                color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
