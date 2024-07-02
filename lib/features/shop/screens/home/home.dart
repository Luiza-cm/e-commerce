import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_learnings/common/widgets/layouts/grid.layout.dart';
import 'package:flutter_learnings/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_learnings/common/widgets/texts/section_heading.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const AppPrimaryHeaderContainer(
            child: Column(
              children: [
                /// Appbar
                HomeAppBar(),
                SizedBox(height: AppSizes.spaceBtwSections),

                /// Searchbar
                AppSearchContainer(text: 'Search in Store'),
                SizedBox(height: AppSizes.spaceBtwSections),

                /// Categories
                Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        AppSectionHeading(
                          title: 'Popular categories',
                          showActionButton: false,
                          textColor: MyColors.white,
                        ),
                        SizedBox(height: AppSizes.spaceBtwItems),

                        /// Categories
                        AppHomeCategories()
                      ],
                    ),
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
              ],
            ),
          ),

          /// Body - White container
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                /// Promo slider banners
                const PromoSlider(
                  banners: [
                    AppImages.promoBanner1,
                    AppImages.promoBanner2,
                    AppImages.promoBanner3
                  ],
                ),
                /// Heading
                AppSectionHeading(title: 'Popular Products', onPressed: (){},),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// Grid Layout products - Popular products
                GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical(),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
