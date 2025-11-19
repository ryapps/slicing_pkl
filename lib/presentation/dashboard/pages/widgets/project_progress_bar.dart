import 'package:flutter/material.dart';
import 'package:slicing_pkl/core/utils/theme/app_colors.dart';

class ProjectProgressBar extends StatelessWidget {
  final double progress;
  const ProjectProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: LinearProgressIndicator(
        value: progress,
        minHeight: 13,
        stopIndicatorRadius: 10,
        borderRadius: BorderRadius.circular(10),
        backgroundColor: Colors.grey.shade300,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.secondary),
      ),
    );
  }
}
