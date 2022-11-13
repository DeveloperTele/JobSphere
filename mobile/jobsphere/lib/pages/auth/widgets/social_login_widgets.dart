import 'package:flutter/material.dart';

class SocialLoginWidgets extends StatelessWidget {

  final GestureTapCallback? onTap;
  final String icon;

  const SocialLoginWidgets({
    Key? key,
    required this.onTap,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 40.0),
      child: GestureDetector(
        onTap: onTap,
        child: Image.asset('assets/images/$icon.png',
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
