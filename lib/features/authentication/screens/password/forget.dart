import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/appbar/appbar.dart';
import 'package:tstore/features/authentication/controllers/forget_password/forget_controller.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/validators/validation.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Heading
              Text(TTexts.forgetPasswordTitle , style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwItems,),
               Text(TTexts.forgetPasswordSubTitle , style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: TSizes.spaceBtwSections * 2,),

              ///TextField
              Form(
                key: controller.forgetPasswordFormKey,
                child: TextFormField(
                  controller: controller.email,
                  validator: TValidator.validateEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right)
                  ),
                ),
              ),
        
              const SizedBox(height: TSizes.spaceBtwSections,),
        
              ///Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=> controller.sendPasswordResetEmail(), child: const Text(TTexts.submit))
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class ForgetPasswordScreen extends StatelessWidget {
//   const ForgetPasswordScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(ForgetPasswordController());

//     return Scaffold(
//       appBar: TAppBar(showBackArrow: true,),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(TSizes.defaultSpace),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
//               const SizedBox(height: TSizes.spaceBtwItems,),
//               Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
//               const SizedBox(height: TSizes.spaceBtwSections * 2,),
              
//               TextFormField(
//                 controller: controller.email,
//                 validator: TValidator.validateEmail,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: const InputDecoration(
//                   labelText: TTexts.email,
//                   prefixIcon: Icon(Iconsax.direct_right)
//                 ),
//               ),
//               const SizedBox(height: TSizes.spaceBtwSections,),
              
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () => controller.sendPasswordResetEmail(),
//                   child: const Text(TTexts.submit)
//                 )
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


