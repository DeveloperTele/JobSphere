import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/custom_menu_tile.dart';

class DashboardMenu extends GetView<LayoutController> {

  final GestureTapCallback? profileClick;
  final Function(int) menuClick;

  const DashboardMenu({
    Key? key,
    required this.profileClick,
    required this.menuClick,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 90),
              GestureDetector(
                onTap: profileClick,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 10, bottom: 15),
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/htunaunglinn.jpeg",
                        ),
                      ),
                    ),
                    const Text(
                      "Htun Aung Linn",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
              CustomMenuTile(
                text: 'Home',
                icon: Icons.home,
                selected: controller.currentLayout == 0,
                click: () => menuClick(0),
              ),
              CustomMenuTile(
                text: 'Bookmark',
                icon: controller.currentLayout == 1 ? Icons.bookmark : Icons.bookmark_border,
                selected: controller.currentLayout == 1,
                click: () => menuClick(1),
              ),
              CustomMenuTile(
                text: 'Notification',
                icon: Icons.notifications,
                selected: controller.currentLayout == 2,
                click: () => menuClick(2),
              ),
              CustomMenuTile(
                text: 'Categories',
                icon: Icons.dashboard,
                selected: controller.currentLayout == 3,
                click: () => menuClick(3),
              ),
              CustomMenuTile(
                text: 'Setting',
                icon: Icons.settings,
                selected: controller.currentLayout == 4,
                click: () => menuClick(4),
              ),
              CustomMenuTile(
                text: 'About',
                icon: Icons.info,
                selected: controller.currentLayout == 5,
                click: () => menuClick(5),
              ),
            ],
          ),
        )),
        Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          width: Get.width,
          child: Row(
            children: const [
              Icon(
                Icons.logout,
                size: 18,
                color: Colors.red,
              ),
              Text(
                " LogOut",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
