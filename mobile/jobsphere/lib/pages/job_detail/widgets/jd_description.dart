import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class JdDescription extends StatelessWidget {

  final String text;

  const JdDescription({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Html(data: text);
  }
}
