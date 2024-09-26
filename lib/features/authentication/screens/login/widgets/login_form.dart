import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/controllers/login/login_controller.dart';
import 'package:tstore/features/authentication/screens/password/forget.dart';
import 'package:tstore/features/authentication/screens/signup/signup.dart';
import 'package:tstore/navigation_menu.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/validators/validation.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              ///Email
              TextFormField(
                controller: controller.email,
                validator: (value) => TValidator.validateEmail(value),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email,
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              ///Password
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  obscureText: controller.hidePassword.value,
                  validator: (value) => TValidator.validatePassword(value),
                  decoration: InputDecoration(
                      labelText: TTexts.password,
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                          onPressed: () => controller.hidePassword.value =
                              !controller.hidePassword.value,
                          icon: Icon(controller.hidePassword.value
                              ? Iconsax.eye_slash
                              : Iconsax.eye))),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields / 2),

              ///Remeber
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Remeber me
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          value: controller.remeberMe.value,
                          onChanged: (value) => controller.remeberMe.value = !controller.remeberMe.value)),
                      const Text(TTexts.rememberMe),
                    ],
                  ),

                  ///Froget
                  TextButton(
                      onPressed: () {
                        //XXXXXXXX
                        Get.to(() => const ForgetPasswordScreen());
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
                      onPressed: () => controller.emailAndPasswordSignIn(),
                      child: const Text(TTexts.signIn))),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Create
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignUpScreen()),
                      child: const Text(TTexts.createAccount))),
            ],
          ),
        ));
  }
}
