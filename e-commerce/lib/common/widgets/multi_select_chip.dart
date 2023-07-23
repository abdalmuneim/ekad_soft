import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MultiSelectChip<T> extends StatelessWidget {
  const MultiSelectChip(
      {super.key,
      required this.items,
      this.onTap,
      required this.checkSelected});
  final List<T> items;
  final void Function()? onTap;
  final Function(T) checkSelected;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 1.h,
          spacing: 2.w,
          children: items
              .map(
                (e) => InkWell(
                  onTap: onTap,
                  child: Container(
                    alignment: Alignment.center,
                    width: 20.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                    decoration: BoxDecoration(
                        color: checkSelected(e)
                            ? AppColors.secondary
                            : AppColors.primary,
                        borderRadius: BorderRadius.circular(100.w)),
                    child: Text(
                      e.toString(),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
