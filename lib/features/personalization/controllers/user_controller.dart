import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:tstore/common/widgets/loaders/loader.dart';
import 'package:tstore/data/repositories/user/user_repository.dart';
import 'package:tstore/features/personalization/models/user_model.dart';

class UserController extends GetxController {
  static UserController get inistance => Get.find();

  final userRepository = Get.put(UserRepository());
  //save user
  Future<void> saveUserRecord (UserCredential? UserCredentials) async {
    try {
      //
      if(UserCredentials != null ){
        //convert name a first 
        final nameParts = UserModel.nameParts(UserCredentials.user!.displayName ?? '');
        final username = UserModel.generateUsername(UserCredentials.user!.displayName ?? '');

        //Map data
        final user = UserModel(
          id: UserCredentials.user!.uid,
          userName: username, 
          email: UserCredentials.user!.email ?? '', 
          firstName: nameParts[0], 
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join('') : '', 
          phoneNumber: UserCredentials.user!.phoneNumber ?? '', 
          profilePicture: UserCredentials.user!.photoURL ?? ''
        );

        //Save user data
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      TLoaders.warningSnackBar(title: 'Data not saved',message: 'Something went wrong while saving your information. You can re-save your data in your profile');
    }
  }
}