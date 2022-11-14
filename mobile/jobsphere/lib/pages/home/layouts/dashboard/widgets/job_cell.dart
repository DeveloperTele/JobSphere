import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/models/jobs_model.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:jobsphere/pages/job_detail/job_detail_page.dart';
import 'package:jobsphere/pages/widgets/round_background_text/round_background_text.dart';

class JobCell extends StatelessWidget {

  final Results job;

  const JobCell({
    Key? key,
    required this.job
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(JobDetailPage(job: job)),
      child: Card(
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 135,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${job.name}',
                style: dashboardJobTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text('${job.locations![0].name}',
                style: dashboardJobLocation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 30,
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 5),
                    RoundedBackgroundText('${job.levels![0].name}',
                      backgroundColor: job.levels![0].color!.withOpacity(0.2),
                      innerRadius: 10,
                      outerRadius: 13.0,
                      style: TextStyle(
                        color: job.levels![0].color!,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 15),
                    RoundedBackgroundText('${job.categories![0].name}',
                      backgroundColor: Colors.black.withOpacity(0.2),
                      innerRadius: 10,
                      outerRadius: 13.0,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('Salary from (****) to (****)',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  RoundedBackgroundText('Posted: ${job.duration}',
                    backgroundColor: Colors.red.withOpacity(0.2),
                    innerRadius: 10,
                    outerRadius: 13.0,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
