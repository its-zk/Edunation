import 'package:edunation/modules/sign_up_student/views/sign_up_student.dart';
import 'package:edunation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final emailController = TextEditingController(),
      passwordController = TextEditingController();
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
            Container(
              height: Get.height * 0.55,
              width: Get.width,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.08),
                          child: const Text(
                            'Hello!',
                            style: TextStyle(
                                fontFamily: 'Kabel-light',
                                fontWeight: FontWeight.w400,
                                fontSize: 32),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.08),
                          child: SignUpTextField(
                              controller: emailController, hintText: "EMAIL"),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.02),
                            child: SignUpTextField(
                                controller: emailController,
                                hintText: "PASSWORD")),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.015),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.home);
                              },
                              child: Container(
                                height: Get.height * 0.045,
                                width: Get.width * 0.35,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(51, 90, 102, 0.53),
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
                    Padding(
                      padding: EdgeInsets.only(bottom: Get.height * 0.04),
                      child: const Column(
                        children: [
                          Text(
                            'FORGOT YOUR PASSWORD?',
                            style: TextStyle(
                                fontFamily: 'Kumbh-sans',
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(138, 138, 138, 1),
                                fontSize: 12),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'HOME PAGE?',
                            style: TextStyle(
                                fontFamily: 'Kumbh-sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
