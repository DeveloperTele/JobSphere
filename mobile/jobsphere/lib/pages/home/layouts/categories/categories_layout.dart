import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';

class CategoriesLayout extends GetView<LayoutController> {
  const CategoriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: controller.toggleLeft,
            splashColor: splashBackground,
            icon: const Icon(Icons.menu, color: Colors.white,)
        ),
        title: const Text('Categories', style: TextStyle(
            color: Colors.white
        ),),
      ),

    );
  }
}
