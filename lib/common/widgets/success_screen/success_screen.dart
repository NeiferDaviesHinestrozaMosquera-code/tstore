import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/styles/spacing_styles.dart';
import 'package:tstore/features/authentication/screens/login/login.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:TSpacingStyle.paddingWithAppBarHeight * 2 ,
          child: Column(
            children: [
                ///IMAGE
              Image(
                image: const AssetImage(TImages.staticSuccessIllustration),
                width: THelperFunctions.screenWidth() * .6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///TITLE
              Text(TTexts.yourAccountCreatedTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.yourAccountCreatedSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///BUTTONS
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const LoginScreen()), child: const Text(TTexts.tContinue)),),

            ],
          ),
        ),
      ),
    );
  }
}