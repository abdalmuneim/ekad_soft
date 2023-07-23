import 'package:ecommerce_futter/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.maxLines = 1,
    this.minLines = 1,
    this.labelText,
    this.prefixIcon,
    this.fillColor = Colors.white,
    this.filled = true,
    this.borderRadius = 10,
    this.obscureText,
    this.border = false,
    this.suffixIcon,
    this.prefixIconColor = Colors.white,
    this.suffixIconColor = Colors.white,
    this.controller,
    this.textDirection,
    this.validator,
    this.onChange,
    this.maxLength,
    this.counterText,
    this.onSave,
    this.enabled,
    this.textAlign = TextAlign.start,
    this.isNumberOnly = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.autofocus,
    this.height,
    this.width,
    this.margin,
    this.onFieldSubmitted,
    this.focusNode,
  }) : super(key: key);
  final int? maxLines, minLines;
  final String? hintText, labelText;
  final Widget? prefixIcon, suffixIcon;
  final Color? fillColor;
  final Color prefixIconColor;
  final Color suffixIconColor;
  final bool? filled, obscureText;
  final bool border;
  final bool isNumberOnly;
  final bool? enabled;
  final TextAlign textAlign;
  final double borderRadius;
  final TextEditingController? controller;
  final TextDirection? textDirection;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChange;
  final FormFieldSetter<String>? onSave;
  final int? maxLength;
  final String? counterText;
  final TextInputAction? textInputAction;
  final bool? autofocus;
  final EdgeInsetsGeometry? margin;

  final double? height, width;
  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool obsecureText = widget.obscureText ?? false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      height: widget.height ?? 40,
      width: widget.width,
      child: TextFormField(
        focusNode: widget.focusNode,
        onFieldSubmitted: widget.onFieldSubmitted,
        textInputAction: widget.textInputAction,
        autofocus: widget.autofocus ?? false,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        enabled: widget.enabled,
        validator: widget.validator,
        controller: widget.controller,
        onChanged: widget.onChange,
        onSaved: widget.onSave,
        textDirection: widget.textDirection,
        obscureText: obsecureText,
        obscuringCharacter: '*',
        keyboardType: widget.isNumberOnly
            ? const TextInputType.numberWithOptions(decimal: true)
            : widget.keyboardType,
        inputFormatters: widget.isNumberOnly
            ? [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
              ]
            : null,
        style: context.textTheme.titleLarge!.copyWith(
          color: AppColors.black,
          fontSize: 12.sp,
        ),
        textAlign: widget.textAlign,
        maxLength: widget.maxLength,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          counterText: widget.counterText,
          suffixIcon: widget.suffixIcon ?? toggleVisibility(),
          suffixIconColor: widget.suffixIconColor,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: widget.prefixIconColor,
          hintText: widget.hintText,
          /* hintStyle: context.textTheme.titleLarge?.copyWith(
            color: AppColors.secondary.withOpacity(.4),
            fontSize: 10.sp,
          ), */
          labelText: widget.labelText,
          // labelStyle: context.textTheme.titleLarge,
          errorStyle: context.textTheme.titleLarge!
              .copyWith(color: Colors.red, fontSize: 10),
          filled: true,
          fillColor: widget.fillColor,
          enabledBorder: widget.border
              ? OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(10))
              : InputBorder.none,
          border: widget.border
              ? OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                )
              : InputBorder.none,
        ),
      ),
    );
  }

  toggleVisibility() {
    if (obsecureText) {
      return IconButton(
        icon: const Icon(
          Icons.visibility_off_outlined,
          size: 18,
        ),
        onPressed: () {
          setState(() {
            obsecureText = false;
          });
        },
      );
    } else if (widget.obscureText != null) {
      return IconButton(
        icon: const Icon(
          Icons.visibility_outlined,
          size: 18,
        ),
        onPressed: () {
          setState(() {
            obsecureText = true;
          });
        },
      );
    } else {
      return null;
    }
  }
}
