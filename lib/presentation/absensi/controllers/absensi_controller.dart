import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:slicing_pkl/core/routes/app_routes.dart';
import '../../../data/models/absensi_history.dart';

class AbsensiController extends GetxController {
  var currentTime = "09:41 AM".obs;
  var currentDate = "Mon, 18 April 2025".obs;

  var officeStart = "08:00 AM".obs;
  var officeEnd = "05:00 PM".obs;

  var history = <AbsensiHistory>[
    AbsensiHistory(
        date: "Mon, 18 April 2025", time: "08:00 - 05:00 PM"),
    AbsensiHistory(
        date: "Fri, 15 April 2025", time: "08:48 - 05:00 PM", isLate: true),
    AbsensiHistory(
        date: "Thu, 14 April 2025", time: "Izin", status: "Izin"),
    AbsensiHistory(
        date: "Wed, 13 April 2025", time: "07:55 - 05:00 PM"),
    AbsensiHistory(
        date: "Tue, 12 April 2025", time: "08:50 - 05:00 PM", isLate: true),
    AbsensiHistory(
        date: "Mon, 11 April 2025", time: "Sakit", status: "Sakit"),
  ].obs;

  void submitAbsen() {
    // logic absen
  }

  void submitIzin(BuildContext context) {
    Get.toNamed(AppRoutes.uploadIzin);
  }
}
