import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learnings/common/styles/shadows.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_learnings/common/widgets/icons/circular_icon.dart';
import 'package:flutter_learnings/common/widgets/images/rounded_image.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? MyColors.darkerGrey : MyColors.white
      ),
      child: Column(
        children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          RoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? MyColors.dark : MyColors.light,
            child: Stack(
              children: [
                /// Thumbnail image
                const RoundedImage(imageUrl: AppImages.productImage1, applyImageRadius: true),

                /// Sale tag
                Positioned(
                  top: 12,
                  child: RoundedContainer(
                    radius: AppSizes.sm,
                    backgroundColor: MyColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: MyColors.black),),
                  ),
                ),

                /// Favourite icon button
                const Positioned(
                  top: 0,
                    right: 0,
                    child: CircularIcon(icon: Iconsax.heart5, color: Colors.red,))
              ],
            ),
          )
          /// Details
        ],
      ),

    );
  }
}


