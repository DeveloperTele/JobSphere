import 'package:flutter/material.dart';
import 'package:jobsphere/background/models/jobs_model.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
