import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/icons/cirular_icon.dart';
import 'package:tstore/common/widgets/products/products_card/product_card_vertfical.dart';
import 'package:tstore/features/shop/screens/home/home.dart';
import 'package:tstore/utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('WishList' , style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add , onPressed: () => Get.to(const HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 8, 
                itemBuilder: (_,index) => const TProductCardVertical()
              )
            ],
          ),
        ),
      ),
    );
  }
}
