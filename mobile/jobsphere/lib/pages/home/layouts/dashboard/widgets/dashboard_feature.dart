import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/job_cell.dart';

class DashboardFeature extends StatelessWidget {
  const DashboardFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(builder: (controller) => SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return JobCell(job: controller.dashboardSearchResults!.last);
        },
          childCount: controller.dashboardSearchResults!.length > 1 ? 1 : controller.dashboardSearchResults!.length,)
    ));
  }
}
