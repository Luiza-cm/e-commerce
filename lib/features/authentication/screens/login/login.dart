import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/styles/spacing_styles.dart';
import 'package:flutter_learnings/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_learnings/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title and subtitle
              const LoginHeader(),

              /// Form
              const LoginForm(),

              ///Divider
              FormDivider(dividerText: AppTexts.orSignInWith.capitalize!),

              const SizedBox(height: AppSizes.spaceBtwItems),
              /// Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}







