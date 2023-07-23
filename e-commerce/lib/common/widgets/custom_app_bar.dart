import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
    );
  }
}
