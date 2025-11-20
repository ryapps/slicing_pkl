import 'package:get/get.dart';
import '../../presentation/absensi/bindings/absensi_binding.dart';
import '../../presentation/absensi/pages/absensi_page.dart';
import '../../presentation/absensi/pages/upload_izin/bindings/upload_izin_binding.dart';
import '../../presentation/absensi/pages/upload_izin/pages/upload_izin_page.dart';
import '../../presentation/dashboard/bindings/dashboard_binding.dart';
import '../../presentation/dashboard/pages/dashboard_page.dart';
import 'app_routes.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
     GetPage(
      name: AppRoutes.absensi,
      page: () => const AbsensiPage(),
      binding: AbsensiBinding(),
    ),
    GetPage(
      name: AppRoutes.uploadIzin,
      page: () => const UploadIzinPage(),
      binding: UploadIzinBinding(),
    ),
  ];
}