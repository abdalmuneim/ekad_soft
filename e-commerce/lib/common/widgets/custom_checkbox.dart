import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:ecommerce_futter/common/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomCheckbox extends StatefulWidget {
  final Function onChanged;
  final bool value;
  final Widget? title;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.title,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          widget.onChanged(_isSelected);
        });
      },
      child: Row(
        children: [
          AnimatedContainer(
            width: 18,
            height: 18,
            margin: const EdgeInsets.all(4),
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
                color: _isSelected ? AppColors.secondary : AppColors.grey,
                borderRadius: BorderRadius.circular(3.0),
                border: Border.all(
                  color: AppColors.primary,
                  width: 1.5,
                )),
            child: _isSelected
                ? const Icon(
                    Icons.check,
                    color: AppColors.primary,
                    size: 16,
                  )
                : null,
          ),
          if (widget.title != null) ...[
            1.w.sw,
            widget.title!,
          ],
        ],
      ),
    );
  }
}
