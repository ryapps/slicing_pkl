import 'package:get/get.dart';
import '../../shared/controllers/navigation_controller.dart';
import '../controllers/absensi_controller.dart';

class AbsensiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AbsensiController());
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
