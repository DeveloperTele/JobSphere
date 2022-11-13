import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';

class NotificationLayout extends GetView<LayoutController> {
  const NotificationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: controller.toggleLeft,
            splashColor: splashBackground,
            icon: const Icon(Icons.menu, color: Colors.white,)
        ),
        title: const Text('Notifications', style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: ListView.separated(
        separatorBuilder: (c,i) =>  const SizedBox(height: 2),
        itemCount: 50,
        itemBuilder: (c,i) => GestureDetector(
          onTap: () => Get.dialog(Dialog(
            child: Container(
              width: (Get.width * 2)/3,
              height: 100,
              color: Colors.purple.withOpacity(0.2),
              child: const Center(
                child: Text('Dummy data'),
              ),
            ),
          )),
          child: Container(
            width: Get.width,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/xsphere.png',
                      fit: BoxFit.cover,
                      width: 60.0,
                      height: 60.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('Notification Title', style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Notification detail about job alert and system announcement.', style: TextStyle(
                      color: Colors.black45,
                    )),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
