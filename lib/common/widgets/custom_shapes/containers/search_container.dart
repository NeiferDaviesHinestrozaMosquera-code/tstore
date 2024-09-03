import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/device/device_utility.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,  this.showBackground =  true,  this.showBorder = true, this.onTap, this.padding =const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final bool showBackground , showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? TColors.black : TColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border:showBorder ? Border.all(color: TColors.grey) : null
          ),
          child: Row(
            children: [
              const Icon(Iconsax.search_normal , color: TColors.darkerGrey,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text(TTexts.homeSearchSubTitle , style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}

