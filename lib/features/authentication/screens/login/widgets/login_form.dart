import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/screens/password/forget.dart';
import 'package:tstore/features/authentication/screens/signup/signup.dart';
import 'package:tstore/navigation_menu.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
    
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
    
          ///Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),
    
          ///Remeber
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remeber me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
    
              ///Froget
              TextButton(
                  onPressed: () {
                    //XXXXXXXX
                    Get.to(()=>const ForgetPasswordScreen());
                  },
                  child: const Text(TTexts.forgetPassword)),
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
    
          //SIgn
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(()=>const NavigationMenu()),
                  child: const Text(TTexts.signIn))
          ),
    
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          //Create
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(()=>const SignUpScreen() ),
                  child: const Text(TTexts.createAccount))
          ),
        ],
      ),
    ));
  }
}

