import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/styles/spacing_styles.dart';
import 'package:flutter_learnings/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_learnings/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title and subtitle
              LoginHeader(),

              /// Form
              LoginForm(),

              ///Divider
              LoginFormDivider(),

              SizedBox(height: AppSizes.spaceBtwSections),
              /// Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}







