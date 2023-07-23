import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.containerColor,
    required this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.radius = 10,
  }) : super(key: key);
  final Color? containerColor;
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: containerColor ?? AppColors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
