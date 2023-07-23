import 'package:ecommerce_futter/features/addproduct_feature/presentations/bindings/addproduct_binding.dart';
import 'package:ecommerce_futter/features/addproduct_feature/presentations/pages/addproduct_page.dart';
import 'package:ecommerce_futter/features/splash/prisentations/bindings/splash_binding.dart';
import 'package:ecommerce_futter/features/splash/prisentations/page/splash_page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    /// splash page
    GetPage(
      name: Routes.initial,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),

    /// add product Page
    GetPage(
      name: Routes.addProduct,
      page: () => const AddProductPage(),
      binding: AddProductBinding(),
    ),
  ];
}
