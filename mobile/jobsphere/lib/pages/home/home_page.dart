import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/home/layouts/about/about_layout.dart';
import 'package:jobsphere/pages/home/layouts/bookmark/bookmark_layout.dart';
import 'package:jobsphere/pages/home/layouts/categories/categories_layout.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/dashboard_layout.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/dashboard_menu.dart';
import 'package:jobsphere/pages/home/layouts/notification/notification_layout.dart';
import 'package:jobsphere/pages/home/layouts/setting/setting_layout.dart';
import 'package:jobsphere/pages/profile/profile_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(builder: (controller) => AdvancedDrawer(
      controller: controller.advancedDrawerController,
      backdropColor: Colors.blueGrey,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      drawer: DashboardMenu(
        profileClick: () {
          controller.toggleLeft();
          Get.to(const ProfilePage());
        },
        menuClick: (s) {
          controller.toggleLeft();
          controller.currentLayout = s;
          controller.update();
        },
      ),
      child: [
        const DashboardLayout(),
        const BookmarkLayout(),
        const NotificationLayout(),
        const CategoriesLayout(),
        const SettingLayout(),
        const AboutLayout(),
      ][controller.currentLayout],
    ));
  }
}
