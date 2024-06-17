import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/texts/brand_title_text.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/enums.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const BrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = MyColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: BrandTitleText(
              title: title,
              color: textColor,
              maxLines: maxLines,
              textAlign: textAlign,
              brandTextSizes: brandTextSize,
            )
        ),
        const SizedBox(width: AppSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: MyColors.primary,
          size: AppSizes.iconXs,
        )
      ],
    );
  }
}
