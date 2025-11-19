import 'package:get/get.dart';

import '../../presentation/dashboard/bindings/dashboard_binding.dart';
import '../../presentation/dashboard/pages/dashboard_page.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: '/home',
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}