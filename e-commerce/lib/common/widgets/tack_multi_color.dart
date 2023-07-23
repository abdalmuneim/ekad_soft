import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/features/addproduct_feature/data/models/product_model.dart';
import 'package:ecommerce_futter/features/addproduct_feature/presentations/controllers/addproduct_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TackMultiColors extends StatelessWidget {
  const TackMultiColors({
    super.key,
    required this.onTap,
    this.margin,
  });
  final void Function()? onTap;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return Container(
        margin: margin,
        child: Wrap(
          runSpacing: 1.h,
          spacing: 2.w,
          alignment: WrapAlignment.spaceBetween,
          children: [
            ...controller.selectedProductColors
                .map(
                  (ProductModel e) => Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: e.color,
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        width: 12.w,
                        height: 12.w,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () => controller.onSelectedColor(e.color!),
                          icon: Icon(
                            Icons.delete,
                            color: AppColors.red?.withOpacity(.8),
                          ),
                        ),
                      )
                    ],
                  ),
                )
                .toList(),

            /// add new Color button
            InkWell(
              onTap: onTap,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                width: 12.w,
                height: 12.w,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
