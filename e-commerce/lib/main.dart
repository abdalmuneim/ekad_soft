import 'package:ecommerce_futter/common/routes/pages.dart';
import 'package:ecommerce_futter/common/theme/app_theme_data.dart';
import 'package:ecommerce_futter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await GetStorage.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.initial,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale("ar"), //Get.deviceLocale,
        fallbackLocale: const Locale("en", "US"),
        supportedLocales: S.delegate.supportedLocales,
      );
    });
  }
}
