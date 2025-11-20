import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_pkl/core/routes/app_routes.dart';

class NavigationController extends GetxController {
  var currentIndex = 2.obs; // default ke Home

  void changePage(int index) {
    currentIndex.value = index;
    if (index == 1) {
      Get.toNamed(AppRoutes.absensi); 
    }else if (index == 2) {
      Get.toNamed(AppRoutes.dashboard); 
    }
  }
}
