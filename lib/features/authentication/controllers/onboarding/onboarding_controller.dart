import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tstore/features/authentication/screens/login/login.dart';

class OnBoardingController  extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator (index) {
  currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage () {
    if(currentPageIndex.value == 2){
      final storage = GetStorage();

      if(kDebugMode){
      print('**************** GET STORAGE NEXT BUTTON *****');
      print(storage.read('IsFirstTime'));
    }

      storage.write('IsFirstTime', false);
     Get.offAll(const LoginScreen()); //SE CAMBIO ACA SE AGREGO EL () =>
    } else  {
      int page = currentPageIndex.value + 1 ;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
  currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}