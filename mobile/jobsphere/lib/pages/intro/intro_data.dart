import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

const pageDecoration = PageDecoration(
  titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
  bodyTextStyle: TextStyle(fontSize: 19.0),
  bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
  pageColor: Colors.white,
  imagePadding: EdgeInsets.zero,
);

final introLayouts = [
  PageViewModel(
    title: "Application",
    body: "JobSphere application is developed by Htun Aung Linn and this app is only for testing purpose.",
    image: Lottie.asset('assets/lottie/testing.json', width: 350),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Artificial Intelligent",
    body: "Machine learning model will predict job position and expected salary for applicant. But it's not possible to collect all dataset to train, so I used public and opensource dataset and train.",
    image: Lottie.asset('assets/lottie/ai.json', width: 350),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Backend",
    body: "Backend is developed by nodejs, but majorly ai prediction for applications.",
    image: Lottie.asset('assets/lottie/website.json', width: 350),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Web App",
    body: "Web application also developed by Flutter",
    image: Lottie.asset('assets/lottie/website.json', width: 350),
    decoration: pageDecoration,
  ),
];