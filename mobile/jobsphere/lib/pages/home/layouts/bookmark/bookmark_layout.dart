import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/home/layouts/dashboard/widgets/job_cell.dart';
import 'package:jobsphere/pages/widgets/loading/loading_dialog.dart';
import 'package:lottie/lottie.dart';

class BookmarkLayout extends StatelessWidget {

  const BookmarkLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(builder: (controller) => Scaffold(
      backgroundColor: homeBackground,
      appBar: AppBar(
        backgroundColor: darkBackground,
        leading: IconButton(
            onPressed: controller.toggleLeft,
            splashColor: darkBackground,
            icon: const Icon(Icons.menu, color: Colors.white,)
        ),
        title: const Text('Bookmarks', style: TextStyle(
            color: Colors.white
        ),),
        actions: [
          IconButton(
              onPressed: (){
                Get.dialog(const LoadingDialog());
                Future.delayed(const Duration(seconds: 2), (){
                  controller.removeBookmark();
                  Get.back();
                });
              },
              icon: const Icon(Icons.remove_circle, color: Colors.white)
          ),
          IconButton(
              onPressed: (){
                Get.dialog(const LoadingDialog());
                Future.delayed(const Duration(seconds: 2), (){
                  controller.addBookmark();
                  Get.back();
                });
              },
              icon: const Icon(Icons.add_circle, color: Colors.white)
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.bookmarkCount,
        itemBuilder: (c,i) => JobCell(job: controller.dashboardSearchResults![i]),
      ),
    ));
  }
}
