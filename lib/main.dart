import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tstore/app.dart';
import 'package:tstore/data/repositories/authentication/authentication_repository.dart';
import 'package:tstore/firebase_options.dart';

Future <void> main() async {


  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //Guardar en local
  await GetStorage.init();

  //Await splash 
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}
