import 'package:get/get.dart';

class BottomnavbarController extends GetxController {
  //TODO: Implement BottomnavbarController
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
