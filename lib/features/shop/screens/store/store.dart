import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/appbar/appbar.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_learnings/common/widgets/images/circular_image.dart';
import 'package:flutter_learnings/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_learnings/common/widgets/texts/section_heading.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark
                  ? MyColors.black
                  : MyColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// ---- Search bar
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    const AppSearchContainer(
                        text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections,),
                    
                    /// ---- Featured Brands
                    AppSectionHeading(title: 'Featured Brands', onPressed: (){}),
                    const SizedBox(height: AppSizes.spaceBtwItems / 1.5,),
                    
                    RoundedContainer(
                      padding: const EdgeInsets.all(AppSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          /// Icon
                          CircularImage(
                            image: AppImages.clothIcon,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}


