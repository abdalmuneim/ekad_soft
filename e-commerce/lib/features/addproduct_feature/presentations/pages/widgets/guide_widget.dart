import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/common/widgets/custom_checkbox.dart';
import 'package:ecommerce_futter/features/addproduct_feature/data/models/guide_model.dart';
import 'package:ecommerce_futter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class GuideWidget extends StatelessWidget {
  const GuideWidget(
      {super.key,
      required this.guideList,
      required this.selectedGuide,
      required this.onTap});
  final List<GuideModel> guideList;
  final List<GuideModel> selectedGuide;
  final void Function(GuideModel) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ...guideList
              .map(
                (e) => Container(
                  height: 8.w,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 2.w),
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: AppColors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCheckbox(
                        value: checkSelectedGuide(e.guide!),
                        onChanged: (value) {
                          onTap(e);
                        },
                        title: Text(
                          e.guide ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: AppColors.black),
                        ),
                      ),
                      Text(
                        e.guideQuantity ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: AppColors.black),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          ElevatedButton(
            onPressed: () => Get.back(),
            child: Text(
              S.of(context).saveData,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ]),
      ),
    );
  }

  bool checkSelectedGuide(String guide) {
    return selectedGuide.any((element) => element.guide == guide);
  }
}
