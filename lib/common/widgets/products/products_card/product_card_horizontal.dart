import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/common/widgets/icons/cirular_icon.dart';
import 'package:tstore/common/widgets/images/trounded_image.dart';
import 'package:tstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tstore/common/widgets/texts/product_price.dart';
import 'package:tstore/common/widgets/texts/product_title.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
   final dark = THelperFunctions.isDarkMode(context);
    return Container(
       width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.softGrey),
        child: Row(
          children: [
            //Thumbail
            TRoundedContianer(
              width: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbail Image
                  const SizedBox(
                    height:120,
                    width: 120,
                    child: TRoundedImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    )
                  ),

                   //Sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContianer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
      
                  //Favorite
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            //Details
            SizedBox(
              width: 172,
              child: Padding(
                padding:  const EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(title: "Green Nike Air Presto Flyknit Ultra",smallSize: true,),
                        SizedBox(height: TSizes.spaceBtwItems / 2,),
                        TBrandTitleWithVerifiedIcon(title: "Nike")
                      ],
                    ),

                const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Prices
                        const Flexible(child: TProductPriceText(price: "256",)),

                        //Add to cart
                        Container(
                          decoration: const BoxDecoration(
                            color: TColors.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight: Radius.circular(TSizes.productImageRadius)
                            )
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg *1.2,
                            height: TSizes.iconLg *1.2,
                            child: Center(
                              child: Icon(Iconsax.add,color: TColors.white,),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )

          ],
        ),
    );
  }
}