import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';

class RightMenu extends GetView<LayoutController> {

  const RightMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          //stops: [0.1, 0.5,0.5, 0.7, 0.9],
          colors: [
            splashBackground,
            Colors.blueGrey,
          ],
        ),
      ),
      child: Column(
        children: [
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [

              ],
            ),
          )),
        ],
      ),
    );
  }
}
