import 'package:edunation/modules/auth/controller/auth_controller.dart';
import 'package:edunation/modules/auth/sign_up_student/views/sign_up_student.dart';
import 'package:edunation/routes/routes.dart';
import 'package:edunation/utils/dialogues.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(82, 193, 227, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    scale: 3,
                  ),
                ),
                const Text(
                  "EDUNATION",
                  style: TextStyle(
                      fontFamily: "Primetime",
                      fontSize: 32,
                      color: Color.fromRGBO(70, 79, 88, 1),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: Get.height * 0.18),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 40.0,
                        spreadRadius: 0.0,
                        offset: Offset(
                          0.0,
                          -2.0,
                        ),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: Get.height * 0.08),
                                    child: const Text(
                                      'FORGOT PASSWORD!',
                                      style: TextStyle(
                                          fontFamily: 'Kabel-light',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 32),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: Get.height * 0.08),
                                    child: SignUpTextField(
                                        controller: emailController,
                                        hintText: "EMAIL"),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.height * 0.015),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            showLoadingDialogue(
                                                context: context);
                                            await Get.find<AuthController>()
                                                .resetPassword(
                                              email:
                                                  emailController.text.trim(),
                                            );
                                          }
                                        },
                                        child: Container(
                                          height: Get.height * 0.045,
                                          width: Get.width * 0.35,
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                51, 90, 102, 0.53),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'RESET',
                                              style: TextStyle(
                                                  fontFamily: 'Advent-pro',
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: Get.height * 0.04),
                            child: GestureDetector(
                              onTap: () {
                                Get.offNamedUntil(
                                    Routes.welcome, (route) => false);
                              },
                              child: const Text(
                                'HOME PAGE?',
                                style: TextStyle(
                                    fontFamily: 'Kumbh-sans',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
