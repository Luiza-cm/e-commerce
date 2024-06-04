import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AppVerticalImageText(image: AppImages.shoeIcon, title: 'Shoes', onTap: () {});
        },
      ),
    );
  }
}
