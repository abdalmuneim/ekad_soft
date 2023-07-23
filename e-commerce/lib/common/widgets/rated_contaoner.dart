import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/common/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({
    super.key,
    required this.rated,
  });
  final double rated;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.amber,
        borderRadius: BorderRadius.circular(500),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "$rated",
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
          const Icon(
            Icons.star_rate_rounded,
            color: AppColors.white,
            size: 18,
          ),
        ],
      ),
    );
  }
}
