import 'package:flutter/material.dart';
import 'package:jobsphere/background/constants/color_constant.dart';

class ConfirmButton extends StatelessWidget {

  final String? text;
  final VoidCallback? onPressed;

  const ConfirmButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final Color colorStart = const Color(0xFF0d47a1);
  final Color colorEnd = const Color(0xFF1565c0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60.0, bottom: 26.0),
      decoration: BoxDecoration(
          borderRadius:
          const BorderRadius.all(Radius.circular(5.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: colorStart,
                offset: const Offset(1.0, 6.0),
                blurRadius: 20.0),
            BoxShadow(
                color: colorEnd,
                offset: const Offset(1.0, 6.0),
                blurRadius: 20.0),
          ],
          gradient: LinearGradient(
              colors: [
                colorEnd,
                colorStart
              ],
              begin: const FractionalOffset(0.2, 0.2),
              end: const FractionalOffset(1.0, 1.0),
              stops: const [0.1, 1.0],
              tileMode: TileMode.clamp)),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        splashColor: splashBackground,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 42.0),
          child: Text(text!,
            style: const TextStyle(
                color: Colors.white,
            ),
          ),
        ),
        //onPressed: () => Get.to(const HomePage()),
      ),
    );
  }
}
