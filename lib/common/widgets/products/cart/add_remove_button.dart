import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/icons/cirular_icon.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TProductQuatityWithAddRemoveButton extends StatelessWidget {
  const TProductQuatityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
      icon: Iconsax.minus,
      width: 32,
      height: 32,
      size: TSizes.md,
      color: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
    ),
    SizedBox(width: TSizes.spaceBtwItems,),
    Text("2",style: Theme.of(context).textTheme.titleSmall,),
    SizedBox(width: TSizes.spaceBtwItems,),
      TCircularIcon(
      icon: Iconsax.add,
      width: 32,
      height: 32,
      size: TSizes.md,
      color: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
      backgroundColor: TColors.primary,
    ),
      ],
    );
  }
}

