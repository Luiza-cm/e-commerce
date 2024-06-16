import 'package:flutter/material.dart';
import 'package:flutter_learnings/common/widgets/appbar/appbar.dart';
import 'package:flutter_learnings/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';
import 'package:flutter_learnings/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: AppHelperFunctions.isDarkMode(context)
                  ? MyColors.black
                  : MyColors.white,
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
