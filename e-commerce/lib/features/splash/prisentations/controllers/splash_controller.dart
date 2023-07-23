import 'dart:async';

import 'package:ecommerce_futter/common/routes/pages.dart';
import 'package:ecommerce_futter/common/utils/utilties.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  navigate() {
    Get.toNamed(Routes.addProduct);
  }

  initialStart() {
    Timer(Duration.zero, () async {
      await navigate();
    });
  }

  @override
  void onInit() async {
    await Utilities.askPermission();
    initialStart();
    super.onInit();
  }
}
