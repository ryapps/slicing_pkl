import 'package:get/get.dart';
import 'package:slicing_pkl/presentation/dashboard/bindings/recent_project_binding.dart';

import '../../presentation/dashboard/bindings/dashboard_binding.dart';
import '../../presentation/dashboard/pages/dashboard_page.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: '/dashboard',
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: '/dashboard',
      page: () => const DashboardPage(),
      binding: RecentProjectsBinding(),
    ),
  ];
}