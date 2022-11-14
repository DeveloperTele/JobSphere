import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/pages/company/google_map_page.dart';
import 'package:jobsphere/pages/company/widgets/company_appbar.dart';
import 'package:jobsphere/pages/company/widgets/company_description.dart';
import 'package:jobsphere/pages/company/widgets/company_job_list.dart';
import 'package:jobsphere/pages/widgets/loading/loading_dialog.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {

  List<Widget> slivers = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, (){
      Get.dialog(const LoadingDialog());
    });
    Future.delayed(const Duration(seconds: 2), (){
      setState(() {
        slivers = [
          const CompanyAppbar(),
          const CompanyDescription(),
          const CompanyJobList(),
        ];
      });
      Get.back();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackground,
      body: CustomScrollView(
        slivers: slivers,
      ),
    );
  }
}
