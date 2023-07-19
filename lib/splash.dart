import 'package:edunation/modules/auth/controller/auth_controller.dart';
import 'package:edunation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool isSignedIn = await Get.find<AuthController>().getCurrentUser();

      if (isSignedIn) {
        Get.offAndToNamed(Routes.home);
      } else {
        isSignedIn = await Get.find<AuthController>().getCurrentAmbassador();
        if (isSignedIn) {
          Get.offAndToNamed(Routes.conversation);
        } else {
          Get.offAndToNamed(Routes.welcome);
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(82, 193, 227, 1),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                scale: 2,
              ),
              const Text(
                "EDUNATION",
                style: TextStyle(
                    fontFamily: "Primetime",
                    fontSize: 32,
                    color: Color.fromRGBO(70, 79, 88, 1),
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoadingAnimationWidget.fourRotatingDots(
                    color: Colors.white, size: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
