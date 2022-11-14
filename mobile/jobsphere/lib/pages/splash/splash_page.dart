import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/pages/intro/intro_page.dart';
import 'package:shimmer/shimmer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  startTimer() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(const IntroPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: splashBackground,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Center(
                  child: Image.asset('assets/images/playstore.png',
                    width: 180,
                    height: 180,
                  ),
                )
            ),
            Expanded(child: Center(
              child: Shimmer.fromColors(
                baseColor: Colors.white,

                highlightColor: homeBackground.withOpacity(0.45),
                child: const Text(
                  'JOB SPHERE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
