import 'package:flutter/material.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/dashboard_appbar.dart';

class JobListPage extends StatefulWidget {
  const JobListPage({Key? key}) : super(key: key);

  @override
  State<JobListPage> createState() => _JobListPageState();
}

class _JobListPageState extends State<JobListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackground,
      body: const CustomScrollView(
        slivers: [
          DashboardAppbar(),


        ],
      ),
    );
  }
}
