import 'package:get/get.dart';
import 'package:slicing_pkl/services/project_service.dart';
import '../../shared/controllers/navigation_controller.dart';
import '../controllers/dashboard_chart_controller.dart';
import '../controllers/dashboard_controller.dart';
import '../controllers/recent_projects_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectService>(() => ProjectService());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<DashboardChartController>(() => DashboardChartController());
    Get.lazyPut<NavigationController>(() => NavigationController());
    Get.lazyPut<RecentProjectsController>(() => RecentProjectsController(Get.find<ProjectService>()));
  }
}
