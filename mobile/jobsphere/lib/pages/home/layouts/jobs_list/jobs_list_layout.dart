import 'package:flutter/material.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/pages/home/layouts/jobs_list/widgets/joblist_appbar.dart';

class JobsListLayout extends StatefulWidget {
  const JobsListLayout({Key? key}) : super(key: key);

  @override
  State<JobsListLayout> createState() => _JobsListLayoutState();
}

class _JobsListLayoutState extends State<JobsListLayout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackground,
      body: const CustomScrollView(
        slivers: [
          JobListAppBar(),


        ],
      ),
    );
  }
}
