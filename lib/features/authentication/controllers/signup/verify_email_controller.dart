import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/loaders/loader.dart';
import 'package:tstore/common/widgets/success_screen/success_screen.dart';
import 'package:tstore/data/repositories/authentication/authentication_repository.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/text_string.dart';

class VerifyEmailController extends GetxController{
  static  VerifyEmailController get instance => VerifyEmailController();

  //send email whenever verify screen appears and set timer  for auto red
  @override
  void onInit() {
    // TODO: implement onInit
    sendEmailVerification();
    setTimerForAtoRedirect();
    checkEmailVerificationStatus();
    super.onInit();
  }

  ///Send email verification link
  sendEmailVerification () async{
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(title: 'Email Send' , message: 'Please check your inbox or spam and verify email');
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap Verify Email !!!' , message: e.toString());
    }
  }

  ///timer to automatically
  setTimerForAtoRedirect() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
     await  FirebaseAuth.instance.currentUser?.reload();
     final user = FirebaseAuth.instance.currentUser;
     if (user?.emailVerified ?? false) {
      timer.cancel();
      Get.off(()=> SuccessScreen(
        image: TImages.staticSuccessIllustration, 
        title: TTexts.yourAccountCreatedTitle, 
        subTitle: TTexts.yourAccountCreatedSubTitle,
        onPress: ()=> AuthenticationRepository.instance.screenRedirect(),
        ));
     }

    });
  }

  ///manual check email
  checkEmailVerificationStatus() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified) {
     Get.off(()=> SuccessScreen(
        image: TImages.staticSuccessIllustration, 
        title: TTexts.yourAccountCreatedTitle, 
        subTitle: TTexts.yourAccountCreatedSubTitle,
        onPress: ()=> AuthenticationRepository.instance.screenRedirect(),
        ));
    }
  }
}