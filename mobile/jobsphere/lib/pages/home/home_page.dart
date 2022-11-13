import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/home/layouts/about/about_layout.dart';
import 'package:jobsphere/pages/home/layouts/bookmark/bookmark_layout.dart';
import 'package:jobsphere/pages/home/layouts/categories/categories_layout.dart';
import 'package:jobsphere/pages/home/layouts/jobs_list/jobs_list_layout.dart';
import 'package:jobsphere/pages/home/layouts/jobs_list/widgets/left_menu.dart';
import 'package:jobsphere/pages/home/layouts/jobs_list/widgets/right_menu.dart';
import 'package:jobsphere/pages/home/layouts/notification/notification_layout.dart';
import 'package:jobsphere/pages/home/layouts/setting/setting_layout.dart';
import 'package:jobsphere/pages/profile/profile_page.dart';


class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(builder: (controller) => InnerDrawer(
      key: controller.innerDrawerKey,
      velocity: 20,
      swipeChild: true,
      leftChild: LeftMenu(
        profileClick: () {
          controller.toggleLeft();
          Get.to(const ProfilePage());
        },
        menuClick: (s) {
          controller.toggleLeft();
          controller.currentLayout = s;
        },
      ),
      rightChild: controller.currentLayout == 0 ? const RightMenu() : null,
      scaffold: [
        const JobsListLayout(),
        const BookmarkLayout(),
        const NotificationLayout(),
        const CategoriesLayout(),
        const SettingLayout(),
        const AboutLayout(),
      ][controller.currentLayout],
    ));
  }
}
