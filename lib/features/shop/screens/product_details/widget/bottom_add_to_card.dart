import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/icons/cirular_icon.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TBottomAddToCard extends StatelessWidget {
  const TBottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(TSizes.cardRadiusLg),
            topRight: Radius.circular(TSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkerGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
              SizedBox(width: TSizes.spaceBtwItems,),
              Text("2" , style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(width: TSizes.spaceBtwItems,),
               TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.darkerGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(padding: EdgeInsets.all(TSizes.md),backgroundColor: TColors.primary , side: BorderSide(color: TColors.primary)),child: Text("Add to Cart <3"))
        ],
      ),
    );
  }
}
