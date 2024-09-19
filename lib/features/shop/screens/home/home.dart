import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tstore/common/widgets/products/products_card/product_card_vertfical.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/features/shop/screens/all_products/all_products.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:tstore/utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header
          const TPrimaryHeaderContainer(
            child: Column(
            children: [

              //AppBar
              THomeAppBar(),
              SizedBox(height: TSizes.spaceBtwSections,),

              //Searchbar
              TSearchContainer(),
              SizedBox(height: TSizes.spaceBtwSections,),

              //Categories
              Padding(
                padding: EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [

                    //Heading
                    TSectionHeading(title: 'Popular Categories',showActionButton: false,),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    ///Categories
                    THomeCategories(),
                    //SizedBox(height: TSizes.spaceBtwItems,),
                  ],
                ),
              ),
              SizedBox(height: TSizes.spaceBtwSections,)
            ],
          )
          ),

          ///Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [

                //Promo Slider
                const TPromoSlider(),
                const SizedBox(height: TSizes.spaceBtwSections,),

                ///Heading
                TSectionHeading(title: 'Popular Products',onPressed: () => Get.to(()=>const AllProductsScreen()),),
                const SizedBox(height: TSizes.spaceBtwItems,),

                //Popular Products
                TGridLayout(itemBuilder:(_,index) => const TProductCardVertical() , itemCount: 4,)
                //TProductCardVertical()
              ],
            )
          ),
        ],
      ),
    ));
  }
}

