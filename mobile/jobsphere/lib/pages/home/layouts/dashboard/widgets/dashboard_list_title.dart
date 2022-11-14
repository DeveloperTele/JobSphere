import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';

class DashboardListTitle extends StatelessWidget {

  final String titel;

  const DashboardListTitle({Key? key, required this.titel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(builder: (controller) => SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
            top: 20,
            left: 16
        ),
        child: Text(controller.dashboardSearchResults!.length > 0 ? titel : '', style: dashboardListTitle),
      ),
    ));
  }
}
