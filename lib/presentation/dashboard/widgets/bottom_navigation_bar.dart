import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/theme/app_colors.dart';
import '../controllers/navigation_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavigationController>();

    final List<String> icons = [
      'assets/icon/Project.png',
      'assets/icon/Attendance.png',
      'assets/icon/Home.png',
      'assets/icon/Duty.png',
      'assets/icon/Profile.png',
    ];

    final List<String> labels = [
      "Projek",
      "Absensi",
      "Home",
      "Piket",
      "Profile",
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          // ⭐ Shadow Navbar
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(2, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.only( bottom: 16),
      child: Obx(() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            final bool isSelected = controller.currentIndex.value == index;

            return GestureDetector(
              onTap: () => controller.changePage(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ⭐ Indicator kecil di atas item
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeOut,
                    width: isSelected ? 60 : 0,
                    height: 2.5,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.primary : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),

                  const SizedBox(height: 6),

                  Image.asset(
                    icons[index],
                    width: 26,
                    height: 26,
                    color: isSelected ? AppColors.primary : Colors.grey,
                  ),

                  const SizedBox(height: 4),

                  Text(
                    labels[index],
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                      color: isSelected ? AppColors.primary : Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      }),
    );
  }
}
