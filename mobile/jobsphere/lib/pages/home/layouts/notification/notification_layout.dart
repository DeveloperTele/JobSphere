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
            splashColor: darkBackground,
            icon: const Icon(Icons.menu, color: Colors.white,)
        ),
        title: const Text('Notifications', style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 16,
            right: 16
        ),
        child: ListView.separated(
          separatorBuilder: (c,i) =>  const SizedBox(height: 5),
          itemCount: 50,
          itemBuilder: (c,i) => GestureDetector(
            onTap: () => Get.dialog(Dialog(
              backgroundColor: Colors.purple.withOpacity(0.6),
              child: SizedBox(
                width: (Get.width * 2)/3,
                height: 100,
                child: const Center(
                  child: Text('Dummy data'),
                ),
              ),
            )),
            child: Container(
              width: Get.width - 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
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
                        ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
