import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/theme/app_colors.dart';
import '../../shared/widgets/bottom_navigation_bar.dart';
import '../controllers/absensi_controller.dart';
import 'widgets/absensi_header.dart';
import 'widgets/absensi_history_section.dart';

class AbsensiPage extends GetView<AbsensiController> {
  const AbsensiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        // ⬅️ hanya di sini Obx-nya
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 330,
                    
                  ),
                  Positioned(
                    top: -20,
                    left: -320,
                    right: -320,
                    child: ClipOval(
                      child: Container(
                        height: 320,
                        width: 500,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/images/spiral.png',
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),

                  Positioned(
                    top: 50,
                    left: 20,
                    right: 20,
                    child: AbsensiHeader(
                      currentTime: controller.currentTime.value,
                      currentDate: controller.currentDate.value,
                      officeStart: controller.officeStart.value,
                      officeEnd: controller.officeEnd.value,
                      onAbsenPressed: controller.submitAbsen,
                      onIzinPressed: () => controller.submitIzin(context,)
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AbsensiHistorySection(
                  history: controller.history.value, // RxList
                ),
              ),
            ],
          ),
        );
      }),

      bottomNavigationBar: BottomNavBar(),
    );
  }
}
