import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

const dashboardJobTitle = TextStyle(
  color: Colors.indigo,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const dashboardJobLocation = TextStyle(
  color: Colors.black,
  fontSize: 18,
);

const dashboardListTitle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

const pageDecoration = PageDecoration(
  titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
  bodyTextStyle: TextStyle(
    fontFamily: 'YoeYar',
    fontSize: 18.0
  ),
  bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
  pageColor: Colors.white,
  imagePadding: EdgeInsets.zero,
);