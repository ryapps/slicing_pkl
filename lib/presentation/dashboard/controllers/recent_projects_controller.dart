import 'package:get/get.dart';
import '../../../data/models/ProjectItem.dart';
import '../../../services/project_service.dart';
class RecentProjectsController extends GetxController {
  final ProjectService service;

  RecentProjectsController(this.service);

  RxList<ProjectItem> projects = <ProjectItem>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadProjects();
  }

  Future<void> loadProjects() async {
    isLoading.value = true;

    projects.value = await service.fetchRecentProjects();

    isLoading.value = false;
  }
}
