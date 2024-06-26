import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_learnings/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// Title
              Text(AppTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(
                height: AppSizes.defaultSpace,
              ),

              /// Form
              const SignupForm(),
              const SizedBox(height: AppSizes.defaultSpace),

              /// Divider
              FormDivider(
                dividerText: AppTexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Social buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

