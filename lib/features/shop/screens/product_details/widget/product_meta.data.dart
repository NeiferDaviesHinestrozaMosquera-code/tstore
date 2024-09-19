import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tstore/common/widgets/images/tcircular_image.dart';
import 'package:tstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tstore/common/widgets/texts/product_price.dart';
import 'package:tstore/common/widgets/texts/product_title.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/enums.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price
        Row(
          children: [
            //Sale tag
            TRoundedContianer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm , vertical: TSizes.xs),
              child: Text("25%" , style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            //pRICE
            Text("\$250" , style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: "175",isLarge: true,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        //Title
        const TProductTitleText(title: 'Green Nike Sport'),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        //Stock Statud
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock' , style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        //Brand
        Row(
          children: [
            TCircularImage(image: TImages.shoeIcon , width: 32,height: 32,overlayColor: darkMode ? TColors.white : TColors.black,),
            const TBrandTitleWithVerifiedIcon(title: "Nike", brandTextSizes: TextSizes.medium,)
          ]
        )

      ],
    );
  }
}