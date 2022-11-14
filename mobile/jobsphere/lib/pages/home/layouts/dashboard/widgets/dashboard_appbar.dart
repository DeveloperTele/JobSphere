import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';

class DashboardAppbar extends GetView<LayoutController> {
  const DashboardAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: homeBackground,
      leading: IconButton(
          onPressed: controller.toggleLeft,
          icon: const Icon(Icons.menu, color: Colors.white,)
      ),
      // actions: [
      //   IconButton(
      //       onPressed: controller.dashboardLoadMore,
      //       icon: const Icon(Icons.refresh, color: Colors.white,)
      //   )
      // ],
      pinned: true,
      floating: false,
      collapsedHeight: kToolbarHeight,
      expandedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Job Sphere', style: dashboardListTitle,),
        collapseMode: CollapseMode.parallax,
        stretchModes: const [
          StretchMode.fadeTitle,
        ],
      ),
    );
  }
}
