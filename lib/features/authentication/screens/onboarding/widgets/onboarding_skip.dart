import 'package:flutter/material.dart';
import 'package:flutter_learnings/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}