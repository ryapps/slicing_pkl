import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/theme/app_colors.dart';
import '../../controllers/dashboard_chart_controller.dart';
import 'date_range_project_tab_selector.dart';

class ProjectChartWidget extends StatelessWidget {
  ProjectChartWidget({super.key});

  final controller = Get.find<DashboardChartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "All Projects",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),

          const SizedBox(height: 16),

          // Tabs
          Obx(
            () => DateRangeProjectTabSelector(
              activeIndex: controller.selectedRangeIndex.value,
              onTap: controller.changeRange,
            ),
          ),

          const SizedBox(height: 20),

          // Bar Chart
          Obx(
            () => SizedBox(
              height: 250,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 25000,
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  groupsSpace: 30,
                  titlesData: _bottomTitles(),
                  barGroups: _createBarGroups(controller.monthlyValues),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Bottom labels
  FlTitlesData _bottomTitles() {
    return FlTitlesData(
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
          getTitlesWidget: (value, meta) {
            // Hanya tampilkan ini:
            final allowedValues = [0, 1000, 5000, 10000, 15000, 20000, 25000];

            bool isAllowedValue(double v) {
              return allowedValues.any((a) => (v - a).abs() < 10);
            }

            if (!isAllowedValue(value)) {
              return const SizedBox.shrink();
            }

            String formatted = value < 1000
                ? value.toInt().toString()
                : "${(value / 1000).toStringAsFixed(0)}k";

            return Text(
              formatted,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            );
          },
        ),
      ),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTitlesWidget: (value, meta) {
            const months = [
              "Jan",
              "Feb",
              "Mar",
              "Apr",
              "May",
              "Jun",
              "Jul",
              "Aug",
              "Sep",
              "Oct",
              "Nov",
              "Dec",
            ];
            if (value.toInt() < months.length) {
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  months[value.toInt()],
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }

  List<BarChartGroupData> _createBarGroups(List<double> values) {
    return List.generate(values.length, (index) {
      return BarChartGroupData(
        x: index,
        barsSpace: 16,
        barRods: [
          // Background bar
          BarChartRodData(
            toY: values[index],
            color: AppColors.primary,
            width: 15,
            borderRadius: BorderRadius.circular(16),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 25000,
              color: Colors.grey.shade300,
            ),
          ),

          // Blue bar
        ],
      );
    });
  }
}
