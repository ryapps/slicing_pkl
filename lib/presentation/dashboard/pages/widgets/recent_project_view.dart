import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/recent_projects_controller.dart';
import 'recent_project_section.dart';

class RecentProjectsView extends GetView<RecentProjectsController> {
  const RecentProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return RecentProjectsSection(
          projects: controller.projects,
          onSeeAll: () {
            Get.snackbar("Info", "See all clicked");
          },
        );
      }),
    );
  }
}
