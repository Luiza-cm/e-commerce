import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_learnings/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutter_learnings/common/widgets/images/rounded_image.dart';
import 'package:flutter_learnings/common/widgets/texts/section_heading.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          AppPrimaryHeaderContainer(
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
                    ))
              ],
            ),
          ),

          /// Body - White container
          Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: PromoSlider(
              banners: [
                AppImages.promoBanner1,
                AppImages.promoBanner2,
                AppImages.promoBanner3
              ],
            ),
          )
        ],
      )),
    );
  }
}
