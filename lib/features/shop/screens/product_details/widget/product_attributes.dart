import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
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
        padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ?  TColors.darkerGrey : TColors.grey ,
          child: Column(
            children: [
              //Title , price and stock
              Row(
                children: [
                    TSectionHeading(title: "Variation",showActionButton: false,),
                    SizedBox(width: TSizes.spaceBtwItems,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                      children: [
                        TProductTitleText(title: "Price : ",smallSize: true,),
                        SizedBox(width: TSizes.spaceBtwItems,),
                       //Current Price
                        Text("\$25" , style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                        SizedBox(width: TSizes.spaceBtwItems,),

                       //Sale PRICE
                       TProductPriceText(price: "20"),
                      ],
                    ),

                    //Stock
                    Row(
                      children: [
                        TProductTitleText(title: "Stock : ",smallSize: true,),
                        Text("In Stock " , style: Theme.of(context).textTheme.titleMedium,)
                      ],
                    )
                      ],
                    ),
                ],
              ),

              //Variantion description
              TProductTitleText(title: "This is the description" , smallSize: true,maxLines: 4,)
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),

        //Attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Colors"),
            SizedBox(height: TSizes.spaceBtwItems / 2),
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
            TSectionHeading(title: "Sizes"),
            SizedBox(height: TSizes.spaceBtwItems / 2),
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

