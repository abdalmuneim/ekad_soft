import 'package:ecommerce_futter/common/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {super.key,
      required this.url,
      this.borderRadius = 0,
      this.height,
      this.width});
  final String? url;
  final double borderRadius;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        fit: BoxFit.cover,
        height: height,
        width: width,
        url ?? "",
        errorBuilder: (BuildContext context, _, stackTrace) {
          return const Center(
              child: CustomText(
            text: "imageNotLoaded",
          ));
        },
        loadingBuilder: (context, Widget child, ImageChunkEvent? url) {
          if (url == null) {
            return child;
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
                value: url.expectedTotalBytes != null
                    ? url.cumulativeBytesLoaded / url.expectedTotalBytes!
                    : null,
              ),
            );
          }
        },
      ),
    );
  }
}
