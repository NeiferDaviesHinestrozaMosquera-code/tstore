import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/success_screen/success_screen.dart';
import 'package:tstore/features/authentication/screens/login/login.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(Icons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///IMAGE
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * .6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///TITLE
              Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text("Support@nirobidev.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///BUTTONS
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const SuccessScreen()),child: const Text(TTexts.tContinue),),),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),),

            ],
          ),
        ),
      ),
    );
  }
}
