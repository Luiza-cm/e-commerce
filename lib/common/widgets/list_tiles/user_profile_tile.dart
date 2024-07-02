import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/images/circular_image.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: AppImages.user,
        width: 50,
        height: 50,
        padding: 0,
        fit: BoxFit.fitHeight,
      ),
      title: Text('Luiza Monção',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: MyColors.white)),
      subtitle: Text('support@support.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: MyColors.white)),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.edit, color: MyColors.white)),
    );
  }
}