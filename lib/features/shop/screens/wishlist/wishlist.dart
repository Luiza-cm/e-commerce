import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/appbar/appbar.dart';
import 'package:flutter_learnings/common/widgets/icons/circular_icon.dart';
import 'package:flutter_learnings/common/widgets/layouts/grid.layout.dart';
import 'package:flutter_learnings/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_learnings/features/shop/screens/home/home.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const  EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(itemCount: 6, itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
