import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/common/widgets/custom_shapes/curved_edges/custom_curved_edge_widget.dart';
import 'package:tstore/common/widgets/icons/cirular_icon.dart';
import 'package:tstore/common/widgets/images/trounded_image.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/features/shop/screens/product_details/widget/bottom_add_to_card.dart';
import 'package:tstore/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:tstore/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:tstore/features/shop/screens/product_details/widget/product_meta.data.dart';
import 'package:tstore/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
bottomNavigationBar: TBottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
              // Product Image Slider
              TProductImageSlider(dark: dark),

              //Product Detail
              Padding(
                padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace
                ),
                child: Column(
                  children: [
                    //Rating y share
                      const TRatingAndShare(),

                    ///Price , title , stock and brand
                     const TProductMetaData(),

                    ///attributes
                    const TProductAttrubutes(),
                    const SizedBox(height: TSizes.spaceBtwSections,),

                    ///checkeout button
                    SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Checkout"))),

                    ///description
                    const TSectionHeading(title: "Description",showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    const ReadMoreText(
                      "This is a producto descripcion and anything . I love Snaker",
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Less',
                      moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    ),

                    ///reviews
                    Divider(color: Colors.transparent,),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    Row(
                      children: [
                        TSectionHeading(title: "Reviews(200)",onPressed: (){},),
                        IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right3))
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections,),

                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}

