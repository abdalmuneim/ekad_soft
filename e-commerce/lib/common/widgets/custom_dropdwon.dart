import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final EdgeInsetsGeometry? margin;
  final String? hint;
  final void Function(T?)? onChanged;
  const CustomDropdown({
    Key? key,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: margin,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(width: 1.5, color: Colors.white),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: Colors.white,
          hint: Text(hint ?? "",
              style: Theme.of(context)
                  .inputDecorationTheme
                  .hintStyle
                  ?.copyWith(overflow: TextOverflow.fade)),
          iconSize: 20,
          style: Theme.of(context).inputDecorationTheme.labelStyle,
          value: value,
          items: items
              .map<DropdownMenuItem<T>>((T e) => DropdownMenuItem<T>(
                    value: e,
                    child: Text(e.toString()),
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
