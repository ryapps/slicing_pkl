import 'package:get/get.dart';
import '../controllers/information_field_controller.dart';
import '../controllers/upload_izin_controller.dart';

class UploadIzinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadIzinController());
    Get.lazyPut(() => InformationFieldController());

  }
}
