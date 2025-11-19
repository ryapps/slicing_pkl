import 'package:get/get.dart';
import '../controllers/dashboard_chart_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<DashboardChartController>(() => DashboardChartController());
  }
}
