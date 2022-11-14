import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:jobsphere/pages/company/google_map_page.dart';

class CompanyDescription extends StatelessWidget {
  const CompanyDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 12,
            ),
            Text("Description",
                style: dashboardListTitle),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 16,
            ),
            Text("Location",
              style: dashboardListTitle
            ),
            const SizedBox(
              height: 4,
            ),
            Tooltip(
              message: 'double tap to open',
              preferBelow: false,
              child: InkWell(
                onDoubleTap: () => Get.to(const GoogleMapPage()),
                child: Container(
                  height: 200,
                  width: Get.width - 60,
                  decoration: const BoxDecoration(

                  ),
                  child: Image.asset('assets/images/GoogleMapImage.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text("Vacancy List",
                style: dashboardListTitle
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
