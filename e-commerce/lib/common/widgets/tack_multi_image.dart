import 'dart:io';

import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TackMultiImage extends StatelessWidget {
  const TackMultiImage({
    super.key,
    required this.onTap,
    required this.listImage,
  });
  final void Function()? onTap;
  final List<File> listImage;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 1.h,
      spacing: 2.w,
      alignment:
          listImage.isNotEmpty ? WrapAlignment.start : WrapAlignment.center,
      children: [
        ...listImage
            .map(
              (File e) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                width: 25.w,
                height: 25.w,
                color: AppColors.secondary.withOpacity(.2),
                child: Image.file(
                  e,
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList(),

        /// add new app button
        InkWell(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            width: 25.w,
            height: 25.w,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}
