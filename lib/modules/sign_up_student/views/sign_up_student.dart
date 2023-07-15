import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpStudent extends StatelessWidget {
  SignUpStudent({super.key});
  final nameController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController(),
      phoneNumberController = TextEditingController();
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
                Padding(
                  padding: EdgeInsets.only(
                      top: Get.height * 0.03,
                      left: Get.width * 0.15,
                      right: Get.width * 0.15),
                  child: const Text(
                    '“EDUNATION is an all-in-one platform where you\'ll have no issue in findingthe right university for yourself.”',
                    style: TextStyle(
                        fontFamily: 'Kabel-light',
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: Get.height * 0.06),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: Get.height * 0.06),
                                  child: const Text(
                                    'Create an account',
                                    style: TextStyle(
                                        fontFamily: 'Kabel-light',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 32),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: Get.height * 0.04),
                                  child: SignUpTextField(
                                    controller: nameController,
                                    hintText: "NAME",
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: Get.height * 0.02),
                                  child: SignUpTextField(
                                    controller: emailController,
                                    hintText: "EMAIL",
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: Get.height * 0.02),
                                  child: SignUpTextField(
                                    controller: passwordController,
                                    hintText: "PASSWORD",
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: Get.height * 0.02),
                                  child: SignUpTextField(
                                    controller: emailController,
                                    hintText: "PHONE NUMBER",
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: Get.height * 0.015),
                                    child: GestureDetector(
                                      onTap: () {
                                        // Get.toNamed(Routes.signUpStudent);
                                      },
                                      child: Container(
                                        height: Get.height * 0.045,
                                        width: Get.width * 0.35,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(51, 90, 102, 0.53),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'SIGN UP',
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
                              Get.back();
                            },
                            child: const Center(
                              child: Text(
                                'HOME PAGE',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpTextField extends StatelessWidget {
  const SignUpTextField(
      {super.key, required this.controller, required this.hintText});
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: const Color.fromRGBO(63, 173, 208, 0.53),
          contentPadding: const EdgeInsets.all(0),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontFamily: 'Kabel-light',
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 15),
          filled: true),
    );
  }
}
