import 'package:flutter/material.dart';
import 'package:flutter_learnings/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:flutter_learnings/features/authentication/screens/signup/signup.dart';
import 'package:flutter_learnings/navigation_manu.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:flutter_learnings/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: AppTexts.email,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: AppTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields / 2,
          ),
          // Remember Me and Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(AppTexts.rememberMe),
                ],
              ),

              // Forgot password
              TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: const Text(AppTexts.forgotPassword)),
            ],
          ),
          const SizedBox(
            height: AppSizes.defaultSpace,
          ),

          // Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              child: const Text(AppTexts.signIn),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          // Create Account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: const Text(AppTexts.createAccount),
            ),
          ),
        ],
      ),
    ));
  }
}
