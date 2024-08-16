import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/login_signup/form_divider.dart';
import 'package:tstore/common/widgets/login_signup/social_buttons.dart';
import 'package:tstore/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:tstore/features/authentication/screens/signup/widgets/title_header.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///TITLE
              TTitleHeader(),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Form
              TSignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Diivider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              //Social
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


