import 'dart:io';

import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/features/addproduct_feature/data/models/enums.dart';
import 'package:ecommerce_futter/features/addproduct_feature/presentations/controllers/addproduct_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TackMultiImages extends StatelessWidget {
  const TackMultiImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return Container(
        width: 100.w,
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.spaceBetween,
          runSpacing: 1.h,
          spacing: 1.w,

          // spacing: 2.w,
          alignment: controller.productImages.isNotEmpty
              ? WrapAlignment.spaceBetween
              : WrapAlignment.center,
          children: [
            ...controller.productImages
                .map(
                  (File e) => SizedBox(
                    width: 24.w,
                    height: 24.w,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 22.w,
                          height: 22.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              e,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        /// remove
                        Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                              onTap: () => controller.removeProductImage(e),
                              child: const Icon(
                                Icons.delete_rounded,
                                color: Colors.red,
                                size: 24,
                              )),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),

            /// empty containers
            if (controller.productImages.length < 5) ...[
              ...List.generate(
                5 - controller.productImages.length,
                (e) => InkWell(
                  onTap: () => controller.tackImage(ImageFor.product),
                  child: const ProductContainer(
                    color: AppColors.white,
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ),
              ),
            ],

            /// add new app button
            InkWell(
              onTap: () => controller.tackImage(ImageFor.product),
              child: const ProductContainer(
                  color: AppColors.white,
                  child: Icon(
                    Icons.add,
                  )),
            ),
          ],
        ),
      );
    });
  }
}

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.child,
    this.color,
  });
  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 24.w,
      height: 24.w,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
