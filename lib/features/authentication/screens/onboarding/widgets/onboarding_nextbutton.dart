import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/controllers/onboarding_controller.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/device/device_utility.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(onPressed: () =>  OnBoardingController.instance.nextPage(), style:ElevatedButton.styleFrom(shape: CircleBorder() , backgroundColor: dark ? TColors.dark :  TColors.primary),child: Icon(Iconsax.arrow_right_3)),
    );
  }
}