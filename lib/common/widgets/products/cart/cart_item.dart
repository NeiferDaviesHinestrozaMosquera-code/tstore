import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/images/trounded_image.dart';
import 'package:tstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tstore/common/widgets/texts/product_title.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        TRoundedImage(
          imageUrl: TImages.productImage2,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
    
        //Title , price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: "Nike"),
              Flexible(child: TProductTitleText(title: "Black Sport Shoes" , maxLines: 1,)),
          
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Color: ",style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "Green: ",style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: "Size: ",style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "UK 8: ",style: Theme.of(context).textTheme.bodyLarge),
                  ]
                )
              )
            ],
          ),
        )
      ],
    );
  }
}