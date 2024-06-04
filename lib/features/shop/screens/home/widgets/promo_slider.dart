import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_learnings/common/widgets/images/rounded_image.dart';
import 'package:flutter_learnings/features/shop/controllers/home_controller.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/constants/image_strings.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => RoundedImage(imageUrl: url,)).toList(),
          options: CarouselOptions(
              viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems,),
        Obx(
            () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for(int i = 0; i < banners.length; i++)
                CircularContainerDesign(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? MyColors.primary : MyColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}