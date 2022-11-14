import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/pages/company/company_page.dart';
import 'package:jobsphere/pages/job_detail/widgets/jd_webpage.dart';

class JdTabMenu extends StatelessWidget {

  final String? url;

  const JdTabMenu({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(27.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blueGrey,
        elevation: 9,
        child: Row(
          children: [
            Expanded(child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Description', style: TextStyle(
                    color: Colors.yellowAccent
                  ))
              ),
            )),
            const VerticalDivider(width: 1),
            Expanded(child: Center(
              child: TextButton(
                  onPressed: () => Get.to(const CompanyPage()),
                  child: const Text('Company', style: TextStyle(
                      color: Colors.white
                  ))
              ),
            )),
            const VerticalDivider(width: 1),
            Expanded(child: Center(
              child: TextButton(
                onPressed: () => Get.to(JdWebpage(url: url!)),
                child: const Text('Web Page', style: TextStyle(
                    color: Colors.white
                ))
              ),
            )),
          ],
        ),
      ),
    );
  }
}
