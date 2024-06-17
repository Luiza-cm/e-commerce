import 'package:flutter/material.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/device/device_utility.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true, this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace)
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: AppDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? MyColors.dark
                    : MyColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: MyColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? MyColors.darkerGrey : MyColors.grey,
              ),
              const SizedBox(
                width: AppSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
