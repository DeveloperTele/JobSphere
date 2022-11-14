import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:jobsphere/background/models/jobs_model.dart';
import 'package:jobsphere/pages/job_detail/widgets/jd_description.dart';
import 'package:jobsphere/pages/job_detail/widgets/jd_tab_menu.dart';
import 'package:jobsphere/pages/job_detail/widgets/jd_title_info.dart';
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
          JdTitleInfo(job: widget.job!),
          JdTabMenu(url: widget.job!.refs!.landingPage),
          JdDescription(text: widget.job!.contents!)
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
        title: const Text('Job detail', style: TextStyle(
          color: Colors.white
        ),),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
          children: [
            GestureDetector(
              onTap: () => setState(() {
                fav = !fav;
              }),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: darkBackground,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Icon(Icons.bookmark,
                      color: fav ? Colors.purple : Colors.grey,
                    ),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: views,
          ),
        ),
      ),
    );
  }
}
