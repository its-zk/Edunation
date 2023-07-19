import 'package:edunation/modules/auth/controller/auth_controller.dart';
import 'package:edunation/modules/auth/sign_up_student/views/sign_up_student.dart';
import 'package:edunation/routes/routes.dart';
import 'package:edunation/utils/dialogues.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final emailController = TextEditingController(),
      passwordController = TextEditingController();
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
                                      'Hello!',
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
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: Get.height * 0.02),
                                    child: SignUpTextField(
                                        controller: passwordController,
                                        hintText: "PASSWORD"),
                                  ),
                                  const SizedBox(height: 5),
                                  GetBuilder<AuthController>(
                                      builder: (controller) {
                                    return RadioTile(
                                      onTap: () {
                                        Get.find<AuthController>()
                                            .updateLoginType(LoginType.student);
                                      },
                                      text: LoginType
                                          .student.name.capitalizeFirst
                                          .toString(),
                                      isSelected: controller.loginType ==
                                          LoginType.student,
                                    );
                                  }),
                                  const SizedBox(height: 5),
                                  GetBuilder<AuthController>(
                                      builder: (controller) {
                                    return RadioTile(
                                      onTap: () {
                                        Get.find<AuthController>()
                                            .updateLoginType(
                                                LoginType.ambassador);
                                      },
                                      text: LoginType
                                          .ambassador.name.capitalizeFirst
                                          .toString(),
                                      isSelected: controller.loginType ==
                                          LoginType.ambassador,
                                    );
                                  }),
                                  Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.height * 0.015),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            if (Get.find<AuthController>()
                                                    .loginType ==
                                                LoginType.student) {
                                              showLoadingDialogue(
                                                  context: context);
                                              await Get.find<AuthController>()
                                                  .login(
                                                email:
                                                    emailController.text.trim(),
                                                password: passwordController
                                                    .text
                                                    .trim(),
                                              );
                                            } else {
                                              showLoadingDialogue(
                                                  context: context);
                                              await Get.find<AuthController>()
                                                  .ambassadorLogin(
                                                email:
                                                    emailController.text.trim(),
                                                password: passwordController
                                                    .text
                                                    .trim(),
                                              );
                                            }
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
                                              'LOG IN',
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
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(Routes.forgotPassword);
                                  },
                                  child: const Text(
                                    'FORGOT YOUR PASSWORD?',
                                    style: TextStyle(
                                        fontFamily: 'Kumbh-sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(138, 138, 138, 1),
                                        fontSize: 12),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {
                                    Get.back();
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
                              ],
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

class RadioTile extends StatelessWidget {
  const RadioTile(
      {super.key,
      required this.isSelected,
      required this.text,
      required this.onTap});
  final bool isSelected;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: isSelected ? Colors.blue : null,
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
