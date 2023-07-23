import 'package:ecommerce_futter/features/addproduct_feature/presentations/controllers/addproduct_controller.dart';
import 'package:get/get.dart';

class AddProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddProductController>(() => AddProductController());
  }
}
