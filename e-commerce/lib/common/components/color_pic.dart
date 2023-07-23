import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';

class ColorPic {
  static void chooseColor(ValueChanged<Color?> onChangedColor,
      {Color? initialColor}) {
    Color selected = initialColor ?? const Color(0xff443a49);
    showDialog(
      builder: (context) => AlertDialog(
        title: Text(S.of(Get.context!).pickAColor),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: initialColor ?? const Color(0xff443a49),
            onColorChanged: (value) => selected = value,
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: Text(
              S.of(Get.context!).gotIt,
              style: Theme.of(Get.context!)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: AppColors.black),
            ),
            onPressed: () {
              onChangedColor(selected);
              Get.back();
            },
          ),
        ],
      ),
      context: Get.context!,
    );
  }
}
