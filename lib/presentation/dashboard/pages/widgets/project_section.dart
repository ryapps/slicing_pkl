import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_pkl/core/utils/theme/app_colors.dart';

import '../../controllers/dashboard_controller.dart';
import 'project_progress_bar.dart';

class ProjectSection extends GetView<DashboardController> {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Project sedang berjalan",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 14),

        Obx(
          () => Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.secondary.withOpacity(0.1),
                      child: Icon(
                        Icons.school,
                        color: AppColors.secondary,
                        size: 26,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Tahap Mini Project",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),

                _row(
                  "Jumlah Presentasi",
                  "${controller.presentasiCount.value}x Presentasi",
                ),
                _row("Jumlah Revisi", "${controller.revisiCount.value} Revisi"),

                const SizedBox(height: 12),

                const Text(
                  "Progress Pengerjaan",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),

                Row(
                  children: [
                    Expanded(
                      child: ProjectProgressBar(
                        progress: controller.progress.value,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "${(controller.progress.value * 100).toStringAsFixed(0)}%",
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _row(String left, String right) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(right, style: const TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }
}
