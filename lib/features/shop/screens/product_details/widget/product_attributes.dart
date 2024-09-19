import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/chips/choice_chip.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/common/widgets/texts/product_price.dart';
import 'package:tstore/common/widgets/texts/product_title.dart';
import 'package:tstore/common/widgets/texts/section_heading.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TProductAttrubutes extends StatelessWidget {
  const TProductAttrubutes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
      TRoundedContianer(
        padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ?  TColors.darkerGrey : TColors.grey ,
          child: Column(
            children: [
              //Title , price and stock
              Row(
                children: [
                    const TSectionHeading(title: "Variation",showActionButton: false,),
                    const SizedBox(width: TSizes.spaceBtwItems,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                      children: [
                        const TProductTitleText(title: "Price : ",smallSize: true,),
                        const SizedBox(width: TSizes.spaceBtwItems,),
                       //Current Price
                        Text("\$25" , style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                        const SizedBox(width: TSizes.spaceBtwItems,),

                       //Sale PRICE
                       const TProductPriceText(price: "20"),
                      ],
                    ),

                    //Stock
                    Row(
                      children: [
                        const TProductTitleText(title: "Stock : ",smallSize: true,),
                        Text("In Stock " , style: Theme.of(context).textTheme.titleMedium,)
                      ],
                    )
                      ],
                    ),
                ],
              ),

              //Variantion description
              const TProductTitleText(title: "This is the description" , smallSize: true,maxLines: 4,)
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        //Attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors"),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(text: 'Green', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Black', selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Sizes"),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 10,
              children: [
                TChoiceChip(text: 'EU 32', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'EU 34', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
      ],
    );
  }
}

