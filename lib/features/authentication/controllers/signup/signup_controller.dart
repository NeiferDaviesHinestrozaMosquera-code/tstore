import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/loaders/loader.dart';
import 'package:tstore/data/repositories/authentication/authentication_repository.dart';
import 'package:tstore/data/repositories/user/user_repository.dart';
import 'package:tstore/features/authentication/screens/signup/verify_email.dart';
import 'package:tstore/features/personalization/models/user_model.dart';
import 'package:tstore/utils/connected/network_manager.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState> ();


  //signup
  void signup () async {
    try {
      ///Start loading
      TFullScreenLoader.openLoadingDialog('We are processing your information...' , TImages.docerAnimation);

      ///check internet
      final isConnected =  await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      ///form validation
      if(!signupFormKey.currentState!.validate()) return;

      ///privacy
      if(!privacyPolicy.value){
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account , you must have to read and accept the privacy and terms of use',
        );
        return;
      }

      ///register
      final UserCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      ///save auth
      final newUser = UserModel(
        id: UserCredential.user!.uid,
        firstName : firstName.text.trim(),
        lastName : lastName.text.trim(),
        userName : userName.text.trim(),
        email: email.text.trim(),
        phoneNumber : phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      ///show success
      TLoaders.successSnackBar(title: 'Congratulations',message: 'Your account has been created!! Verify email to continue.');

      ///move verify screen
      // Get.to(()=> VerifyEmailScreen(email: email.text.trim(),));

    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap !!!',message:e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
        ///move verify screen
      Get.to(()=> VerifyEmailScreen(email: email.text.trim(),));
  }
}