import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/generated/l10n.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class QrCode {
  static final QrCode _init = QrCode();
  static QrCode get instance => _init;

  Future<String> scanBarcodeNormal() async {
    String barcodeScanRes;

    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#${AppColors.secondary.value.toRadixString(16).substring(2, 8)}",
        S.of(Get.context!).cancel,
        true,
        ScanMode.QR);

    return barcodeScanRes;
  }
}
