import 'package:get/get.dart';

import '../controllers/kirimpermintaan_controller.dart';

class KirimpermintaanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KirimpermintaanController>(
      () => KirimpermintaanController(),
    );
  }
}
