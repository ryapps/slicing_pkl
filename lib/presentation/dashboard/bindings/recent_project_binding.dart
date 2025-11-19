import 'package:get/get.dart';

import '../../../services/project_service.dart';
import '../controllers/recent_projects_controller.dart';
class RecentProjectsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProjectService());
    Get.lazyPut(() => RecentProjectsController(Get.find()));
  }
}
