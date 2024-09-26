import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/controllers/signup/signup_controller.dart';
import 'package:tstore/features/authentication/screens/signup/verify_email.dart';
import 'package:tstore/features/authentication/screens/signup/widgets/terms_condition.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/validators/validation.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({super.key,});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key:controller.signupFormKey,
      child: Column(
      children: [
        ///Names
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller.firstName,
                validator: (value) => TValidator.validateEmpatyText('First Name', value),
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
                controller: controller.lastName,
                validator: (value) => TValidator.validateEmpatyText('Last Name', value),
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
          controller: controller.userName,
          validator: (value) => TValidator.validateEmpatyText('User Name', value),
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
          controller: controller.email,
          validator: (value) => TValidator.validateEmail(value),
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
          controller: controller.phoneNumber,
          validator: (value) => TValidator.validatePhoneNumber(value),
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
        Obx(
          ()=> TextFormField(
            controller: controller.password,
            obscureText: controller.hidePassword.value,
            validator: (value) => TValidator.validatePassword(value),
            expands: false,
            decoration:  InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye))
                ),
          ),
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
              onPressed: () => controller.signup(),
              child: const Text(TTexts.createAccount)),
        )
      ],
    )
    );
  }
}

