import 'dart:io';

import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class AttachingMultiFiles extends StatelessWidget {
  const AttachingMultiFiles({
    super.key,
    required this.onTap,
    required this.listFiles,
  });
  final void Function()? onTap;
  final List<File> listFiles;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 1.h,
      spacing: 2.w,
      alignment:
          listFiles.isNotEmpty ? WrapAlignment.start : WrapAlignment.center,
      children: [
        ...listFiles
            .map(
              (File e) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                width: 25.w,
                height: 25.w,
                color: AppColors.secondary.withOpacity(.2),
                child: PDFView(
                  filePath: e.path,
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
