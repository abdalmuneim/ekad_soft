import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:info_popup/info_popup.dart';
import 'package:sizer/sizer.dart';

class PopupInfo extends StatelessWidget {
  const PopupInfo({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return InfoPopupWidget(
      contentTitle: hint,
      dismissTriggerBehavior: PopupDismissTriggerBehavior.onTapArea,
      areaBackgroundColor: Colors.black38,
      indicatorOffset: Offset.zero,
      contentOffset: const Offset(-12, 0),
      arrowTheme: const InfoPopupArrowTheme(
        arrowSize: PopupConstants.defaultArrowSize,
        color: AppColors.grey,
        arrowDirection: ArrowDirection.down,
      ),
      contentTheme: InfoPopupContentTheme(
        infoContainerBackgroundColor: Colors.white,
        infoTextStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontSize: 8.sp, color: AppColors.black),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        contentBorderRadius: const BorderRadius.all(Radius.circular(10)),
        infoTextAlign: TextAlign.center,
      ),
      child: Icon(
        Icons.info,
        size: 5.w,
        color: AppColors.lightWhite,
      ),
    );
  }
}
