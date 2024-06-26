import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/brands/brand_showcase.dart';
import 'package:flutter_learnings/common/widgets/layouts/grid.layout.dart';
import 'package:flutter_learnings/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_learnings/common/widgets/texts/section_heading.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const BrandShowcase(
                images: [
                  AppImages.productImage1,
                  AppImages.productImage5,
                  AppImages.productImage9
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              /// Products
              AppSectionHeading(title: 'You might like', showActionButton: true, onPressed: (){}),
              const SizedBox(height: AppSizes.spaceBtwItems),

              GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),
              const SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ]
    );
  }
}
