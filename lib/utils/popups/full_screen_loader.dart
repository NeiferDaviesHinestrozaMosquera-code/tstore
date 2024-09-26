import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/loaders/animation_loader.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

class TFullScreenLoader {
  static void openLoadingDialog (String text , String animation){
    showDialog(
      context: Get.overlayContext!, 
      barrierDismissible: false,
      builder: (_) => PopScope(
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
              height: 250,
              child: TAnimationLoaderWidget(text: text, animation: animation,),
              )
            ],
          ),
        )
      )
    );
  }

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}