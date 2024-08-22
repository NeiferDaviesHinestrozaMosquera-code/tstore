import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/layouts/grid_layout.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tstore/common/widgets/image_text/vertical_image_text.dart';
import 'package:tstore/common/widgets/images/trounded_image.dart';
import 'package:tstore/common/widgets/products/products_card/product_card_vertfical.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/device/device_utility.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header
          TPrimaryHeaderContainer(
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
                    TSectionHeading(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    ///Categories
                    THomeCategories(),
                    //SizedBox(height: TSizes.spaceBtwItems,),
                  ],
                ),
              )
            ],
          )
          ),

          ///Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [

                //Promo Slider
                TPromoSlider(),
                SizedBox(height: TSizes.spaceBtwSections,),

                //Popular Products
                TGridLayout(itemBuilder:(_,index) => TProductCardVertical() , itemCount: 4,)
                //TProductCardVertical()
              ],
            )
          )

        ],
      ),
    ));
  }
}

