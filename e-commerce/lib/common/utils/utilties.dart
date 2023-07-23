import 'package:permission_handler/permission_handler.dart';

class Utilities {
  /// permission
  static askPermission() async {
    /// complete Example for IOS
    /// https://github.com/Baseflow/flutter-permission-handler/blob/master/permission_handler/example/ios/Runner/Info.plist

    // You can request multiple permissions at once.
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
      Permission.camera,
      Permission.manageExternalStorage,
    ].request();

    /// permission storage
    if (statuses[Permission.storage]!.isDenied) {
      await Permission.storage.request().then((value) {
        if (!value.isGranted) askPermission();
      });

      /// permission camera
      if (statuses[Permission.camera]!.isDenied) {
        await Permission.photos.request().then((value) {
          if (!value.isGranted) askPermission();
        });
      }

      /// permission manageExternalStorage
      if (statuses[Permission.manageExternalStorage]!.isDenied) {
        await Permission.manageExternalStorage.request().then((value) {
          if (!value.isGranted) askPermission();
        });
      }
    }
  }
}
