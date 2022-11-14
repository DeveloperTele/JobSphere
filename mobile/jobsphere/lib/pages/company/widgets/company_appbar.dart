import 'package:flutter/material.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/constants/style_constants.dart';

class CompanyAppbar extends StatelessWidget {
  const CompanyAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      backgroundColor: darkBackground,
      collapsedHeight: kToolbarHeight,
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        title: Container(
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    "assets/images/xsphere.png",
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text('Xsphere', style: dashboardListTitle,)
            ],
          ),
        ),
        background: Image.asset('assets/images/company_profile.jpeg', fit: BoxFit.cover),
      ),
    );
  }
}
