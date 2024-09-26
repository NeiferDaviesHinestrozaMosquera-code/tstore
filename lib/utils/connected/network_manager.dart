// import 'dart:async';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:tstore/common/widgets/loaders/loader.dart';

// class NetworkManager extends GetxController{
//   static NetworkManager get instance => Get.find();

//   final Connectivity _connectivity = Connectivity();
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;


//   //Initialize the network
//   @override
//   void onInit() {
//     super.onInit();
//     _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
//   }

//   //Update the connection status
//   Future <void> _updateConnectionStatus(ConnectivityResult result) async {
//     _connectionStatus.value = result;
//     if(_connectionStatus.value == ConnectivityResult.none){
//       TLoaders.warningSnackBar(title:'No Internet Connection');
//     }
//   }

//   //check the internet
//   //resturn true connected

//   Future<bool> isConnected() async{
//     try {
//       final result = await _connectivity.checkConnectivity();
//       if(result == ConnectivityResult.none){
//         return false;
      
//     } else {
//       return true;
//     }
//   } on PlatformException catch (e) {
//     return false;
//   }
//   }

//   @override
//   void onClose() {
//     // TODO: implement onClose
//     super.onClose();
//   }
// }

import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tstore/common/widgets/loaders/loader.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> results) async {
    try {
      final result = results.first; // Assuming you only care about the first result
      _connectionStatus.value = result;
      if (result == ConnectivityResult.none) {
        TLoaders.warningSnackBar(title: 'No Internet Connection');
      }
    } catch (e) {
      print('Error updating connection status: $e');
    }
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result != ConnectivityResult.none;
    } on PlatformException catch (e) {
      return false;
    }
  }

  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
}