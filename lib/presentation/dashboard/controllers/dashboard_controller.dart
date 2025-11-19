import 'package:get/get.dart';

class DashboardController extends GetxController {
  /// User data
  var userName = "Reivan Elsyafir P".obs;

  /// Active tab: 0 = Home, 1 = Jurnal
  var activeTab = 0.obs;

  /// Stats
  var totalAbsensi = 234.obs;
  var totalMasuk = 23.obs;
  var totalIzin = 23.obs;
  var totalAlpa = 23.obs;

  /// Project data
  var presentasiCount = 2.obs;
  var revisiCount = 8.obs;
  var progress = 0.75.obs;

  void changeTab(int index) {
    activeTab.value = index;
  }
  var currentIndex = 2.obs; // default ke Home

  void changePage(int index) {
    currentIndex.value = index;
  }
}
