import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/screens/signup/verify_email.dart';
import 'package:tstore/features/authentication/screens/signup/widgets/terms_condition.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({super.key,});


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
      children: [
        ///Names
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
    
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
    
        ///USER
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
    
        ///EMAIL
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
    
        ///PHONE
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
    
        ///PASSWORD
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
    
        ///TERMS
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        const TTermnsAndConditionCheckbox(),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
    
        ///SIGN
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.to(()=> const VerifyEmailScreen());
              },
              child: const Text(TTexts.createAccount)),
        )
      ],
    )
    );
  }
}

