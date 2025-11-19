import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 2.obs; // default ke Home

  void changePage(int index) {
    currentIndex.value = index;
  }
}
