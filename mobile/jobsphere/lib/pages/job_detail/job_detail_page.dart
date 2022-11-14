import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:jobsphere/background/models/jobs_model.dart';
import 'package:jobsphere/pages/job_detail/widgets/jd_tab_menu.dart';
import 'package:jobsphere/pages/widgets/loading/loading_dialog.dart';

class JobDetailPage extends StatefulWidget {

  final Results? job;

  const JobDetailPage({
    Key? key,
    required this.job
  }) : super(key: key);

  @override
  State<JobDetailPage> createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage> {

  bool fav = false;

  List<Widget> views = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, (){
      Get.dialog(const LoadingDialog());
    });
    Future.delayed(const Duration(seconds: 2), (){
      setState(() {
        views = [
          const SizedBox(height: 200),
          const JdTabMenu(),
        ];
      });
      Get.back();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBackground,
        title: const Text('Job description', style: TextStyle(
          color: Colors.white
        ),),
      ),
      bottomNavigationBar: Row(
        children: [
          GestureDetector(
            onTap: () => setState(() {
              fav = !fav;
            }),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Icon(Icons.bookmark,
                  color: fav ? Colors.purple : Colors.grey,
                ),
              ),
            ),
          ),
          Expanded(child: GestureDetector(
            onTap: () {
              Get.dialog(const LoadingDialog());
              Future.delayed(const Duration(seconds: 3), (){
                Get.back();
                Get.snackbar(
                  'Successful',
                  'Your job application is send successfully',
                  snackPosition: SnackPosition.BOTTOM
                );
              });
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.purple,
              child: const Center(
                child: Text('APPLY', style: dashboardListTitle),
              ),
            ),
          ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: views,
        ),
      ),
    );
  }
}
