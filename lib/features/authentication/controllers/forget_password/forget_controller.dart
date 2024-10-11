import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/loaders/loader.dart';
import 'package:tstore/data/repositories/authentication/authentication_repository.dart';
import 'package:tstore/features/authentication/screens/password/reset.dart';
import 'package:tstore/utils/connected/network_manager.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/popups/full_screen_loader.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //variable
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  //send rest pass
  Future<void> sendPasswordResetEmail() async {
    try {
      ///star
      TFullScreenLoader.openLoadingDialog('Processing your request...', TImages.docerAnimation);

      //Internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //form validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //Redirect
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      //remove loader
      TFullScreenLoader.stopLoading();

      //show success
      TLoaders.successSnackBar(title: 'Email sent', message: 'Email link sent to reset your password :3'.tr);

      //Redirect
      Get.to(()=> ResentPasswordScreen(email:email.text.trim()));

    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'Oh Snap Send Password Email' , message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      ///star
      TFullScreenLoader.openLoadingDialog('Processing your request...', TImages.docerAnimation);

      //Internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }


      //Redirect
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      //remove loader
      TFullScreenLoader.stopLoading();

      //show success
      TLoaders.successSnackBar(title: 'Email send', message: 'Email link sent to reset your password '.tr);


    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'Oh Snap Send Password Email' , message: e.toString());
    }
  }
}
