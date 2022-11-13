import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/splash/splash_page.dart';

class JobSphere extends StatelessWidget {

  const JobSphere({Key? key}) : super(key: key);

  void _initControllers() {
    Get.lazyPut(() => LayoutController(), fenix: true);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      title: 'Job Sphere ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
      home: const SplashPage(),
      initialRoute: '/',
      onInit: _initControllers,
    );
  }
}
