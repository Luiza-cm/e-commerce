import 'package:flutter/material.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/constants/text_strings.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/text_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: AppSizes.appBarHeight,
              left: AppSizes.defaultSpace,
              bottom: AppSizes.defaultSpace,
              right: AppSizes.defaultSpace
            ),
          child: Column(
            children: [
              /// Logo, title and subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      image: AssetImage(dark
                          ? AppImages.darkAppLogo
                          : AppImages.lightAppLogo),
                      height: 150,
                  ),
                  Text(AppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: AppSizes.sm,),
                  Text(AppTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
