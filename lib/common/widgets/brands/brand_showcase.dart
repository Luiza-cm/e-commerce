import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/brands/brand_card.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Btand with products count
          const BrandCard(showBorder: false),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// Brand top 3 products images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: RoundedContainer(
      height: 100,
      backgroundColor: AppHelperFunctions.isDarkMode(context)
          ? MyColors.darkerGrey
          : MyColors.light,
      margin: const EdgeInsets.only(right: AppSizes.sm),
      padding: const EdgeInsets.all(AppSizes.md),
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ));
  }
}
