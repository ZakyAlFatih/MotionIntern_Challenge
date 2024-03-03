import 'package:get/get.dart';

import '../controllers/ubah_pass_controller.dart';

class UbahPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbahPassController>(
      () => UbahPassController(),
    );
  }
}
