import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/pages/auth/login_page.dart';
import 'package:jobsphere/pages/intro/intro_data.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: introLayouts,
        onDone: () => Get.to(const LoginPage()),
        showSkipButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: true,
        back: const Icon(Icons.arrow_back_ios),
        next: const Icon(Icons.arrow_forward_ios),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        dotsDecorator: DotsDecorator(
          size: const Size(10.0, 10.0),
          color: homeBackground,
          activeSize: const Size(22.0, 10.0),
          activeShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
