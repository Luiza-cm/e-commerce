import 'package:flutter/material.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = MyColors.light,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = AppSizes.md,
  });

  final String imageUrl;
  final double? width, height;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? AssetImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
