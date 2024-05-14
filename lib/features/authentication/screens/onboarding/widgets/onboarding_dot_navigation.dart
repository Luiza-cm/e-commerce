import 'package:flutter/material.dart';
import 'package:flutter_learnings/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/device/device_utility.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: AppSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.doNavigationClick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? MyColors.light : MyColors.dark,
              dotHeight: 6
          ),
        )
    );
  }
}
