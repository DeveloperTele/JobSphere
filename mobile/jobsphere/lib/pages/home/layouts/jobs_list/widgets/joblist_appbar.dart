import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';

class JobListAppBar extends GetView<LayoutController> {
  const JobListAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: homeBackground,
      leading: IconButton(
          onPressed: controller.toggleLeft,
          splashColor: splashBackground,
          icon: const Icon(Icons.menu, color: Colors.white,)
      ),
      actions: [
        IconButton(
          onPressed: controller.toggleRight,
          splashColor: splashBackground,
          icon: const Icon(Icons.filter_alt, color: Colors.white,)
        )
      ],
      pinned: true,
      floating: false,
      collapsedHeight: 55,
      expandedHeight: 150,
      flexibleSpace: Container(
        height: 150,
        width: Get.width,
      ),
    );
  }
}
