import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_pkl/core/utils/theme/app_colors.dart';
import '../controllers/dashboard_controller.dart';
import '../../shared/widgets/bottom_navigation_bar.dart';
import 'widgets/home_header.dart';
import 'widgets/home_stat_card.dart';
import 'widgets/home_tab_selector.dart';
import 'widgets/project_chart_widget.dart';
import 'widgets/project_section.dart';
import 'widgets/recent_project_view.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(height: 190, decoration: const BoxDecoration()),

                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: HomeHeader(name: controller.userName.value),
                  ),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Obx(
                        () => HomeTabSelector(
                          activeIndex: controller.activeTab.value,
                          onTap: controller.changeTab,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 9,
                mainAxisSpacing: 10,
                childAspectRatio: 1.8,
                children: [
                  HomeStatCard(
                    title: "Total Absensi",
                    value: controller.totalAbsensi.value.toString(),
                    icon: 'briefcase',
                    iconColor: Colors.orange,
                  ),
                  HomeStatCard(
                    title: "Total Masuk",
                    value: controller.totalMasuk.value.toString(),
                    icon: 'brifecase-timer',
                    iconColor: Colors.green,
                  ),
                  HomeStatCard(
                    title: "Total Izin/Sakit",
                    value: controller.totalIzin.value.toString(),
                    icon: 'profile-2user',
                    iconColor: Colors.purple,
                  ),
                  HomeStatCard(
                    title: "Total Alpa",
                    value: controller.totalAlpa.value.toString(),
                    icon: 'flag-2',
                    iconColor: Colors.red,
                  ),
                ],
              ),

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const ProjectSection(),
              ),

              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ProjectChartWidget(),
              ),
              const SizedBox(height: 25),
              RecentProjectsView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
