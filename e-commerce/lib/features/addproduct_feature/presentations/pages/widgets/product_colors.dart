import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/features/addproduct_feature/data/models/product_model.dart';
import 'package:ecommerce_futter/features/addproduct_feature/presentations/controllers/addproduct_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TackMultiColors extends StatelessWidget {
  const TackMultiColors({
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
          alignment: controller.selectedProductColors.isNotEmpty
              ? WrapAlignment.spaceBetween
              : WrapAlignment.center,
          children: [
            ...controller.selectedProductColors
                .map(
                  (ProductModel e) => SizedBox(
                    width: 15.w,
                    height: 15.w,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 13.w,
                          height: 13.w,
                          child: Container(
                            decoration: BoxDecoration(
                                color: e.color,
                                borderRadius: BorderRadius.circular(10)),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            width: 12.w,
                            height: 12.w,
                          ),
                        ),

                        /// remove
                        Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                              onTap: () => controller.onSelectedColor(e.color!),
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
            if (controller.selectedProductColors.length < 5) ...[
              ...List.generate(
                7 - controller.selectedProductColors.length,
                (e) => InkWell(
                  onTap: () => controller.tackColor(),
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
              onTap: () => controller.tackColor(),
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
      width: 15.w,
      height: 15.w,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
