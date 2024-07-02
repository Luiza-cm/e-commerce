import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/appbar/appbar.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_learnings/common/widgets/images/circular_image.dart';
import 'package:flutter_learnings/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:flutter_learnings/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:flutter_learnings/common/widgets/texts/section_heading.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            AppPrimaryHeaderContainer(
                child: Column(
              children: [
                /// Appbar
                CustomAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: MyColors.white),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// User profile card
                const UserProfileTile(),

                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                )
              ],
            )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const AppSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  SettingsMenuTilex(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subtitle: 'Set shopping delivery address',
                      onTap: (){},
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: (){},
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    onTap: (){},
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                    onTap: (){},
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                    onTap: (){},
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                    onTap: (){},
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    onTap: (){},
                  ),


                  /// App Settings
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const AppSectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingsMenuTilex(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase',
                    onTap: (){},
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result in safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  SettingsMenuTilex(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  
                  /// Logout Button
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections * 2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
