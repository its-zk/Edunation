import 'package:edunation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                            'WELCOME',
                            style: TextStyle(
                                fontFamily: 'Kabel-light',
                                fontWeight: FontWeight.w400,
                                fontSize: 32),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: Get.height * 0.08, left: 20, right: 20),
                          child: const Text(
                            '“EDUNATION is an all-in-one platform where you\'ll have no issue in findingthe right university for yourself.”',
                            style: TextStyle(
                                fontFamily: 'Kabel-light',
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                height: 1.2,
                                fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.04),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.signUpStudent);
                            },
                            child: Container(
                              height: Get.height * 0.065,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(63, 173, 208, 0.53),
                              ),
                              child: const Center(
                                child: Text(
                                  'SIGN UP AS STUDENT',
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
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.02),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.signUpAmbassador);
                            },
                            child: Container(
                              height: Get.height * 0.065,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(63, 173, 208, 0.53),
                              ),
                              child: const Center(
                                child: Text(
                                  'SIGN UP AS AN AMBASSADOR',
                                  style: TextStyle(
                                      fontFamily: 'Advent-pro',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: Get.height * 0.04),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.login);
                        },
                        child: const Center(
                          child: Text(
                            'ALREADY HAVE AN ACCOUNT?',
                            style: TextStyle(
                                fontFamily: 'Kumbh-sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 12),
                          ),
                        ),
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
