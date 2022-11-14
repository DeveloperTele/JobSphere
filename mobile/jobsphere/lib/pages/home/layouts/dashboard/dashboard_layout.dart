import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/dashboard_appbar.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/dashboard_feature.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/dashboard_list_title.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/dashboard_predict_jobs.dart';
import 'package:loadany/loadany.dart';

class DashboardLayout extends StatelessWidget {

  const DashboardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(builder: (controller) => Scaffold(
      backgroundColor: homeBackground,
      body: LoadAny(
        onLoadMore: () => controller.dashboardLoadMore(),
        status: controller.dashboardListStatus,
        footerHeight: 40,
        endLoadMore: true,
        errorMsg: 'Error Loading',
        finishMsg: 'Search Finished',
        loadingMsg: 'Loading More',
        bottomTriggerDistance: 200,
        child: CustomScrollView(
          slivers: [
            const DashboardAppbar(),
            const DashboardListTitle(titel: 'Feature Jobs'),
            const DashboardFeature(),
            const DashboardListTitle(titel: 'Suitable Jobs'),
            const DashboardPredictJobs(),
          ],
        ),
      ),
    ));
  }
}
