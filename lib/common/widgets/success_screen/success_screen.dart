import 'package:flutter/material.dart';
import 'package:tstore/common/styles/spacing_styles.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPress,
  });

  final String image, title, subTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// IMAGE
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * .6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// TITLE
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// BUTTONS
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPress,
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}