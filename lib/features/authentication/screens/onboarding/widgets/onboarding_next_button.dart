import 'package:flutter/material.dart';
import 'package:flutter_learnings/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/device/device_utility.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? MyColors.primary : MyColors.black,
          ),
          child: const Icon(Icons.arrow_forward_rounded),
        )
    );
  }
}