import 'package:edunation/firebase_options.dart';
import 'package:edunation/modules/auth/controller/auth_controller_binding.dart';
import 'package:edunation/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes.getPages,
      initialRoute: Routes.splash,
      initialBinding: AuthControllerBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
