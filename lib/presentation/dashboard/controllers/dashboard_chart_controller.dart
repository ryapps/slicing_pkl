import 'package:get/get.dart';

class DashboardChartController extends GetxController {
  /// 0 = Week, 1 = Month, 2 = Year
  var selectedTab = 1.obs;
  var selectedRangeIndex = 0.obs;


  /// Dummy Data (bisa nanti dipakai dari API)
  var monthlyValues = <double>[
    5000, 13000, 17000, 9000, 11500, 7000,
    9500, 6000, 2000, 16000, 8500, 15000,
  ].obs;

 void changeRange(int index) {
  selectedRangeIndex.value = index;
}
}
