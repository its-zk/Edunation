import 'package:edunation/modules/auth/models/user_model.dart';
import 'package:edunation/modules/auth/repo/auth_repo.dart';
import 'package:edunation/modules/home/models/ambassador_model.dart';
import 'package:edunation/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final _authRepo = AuthRepo();
  LoginType loginType = LoginType.student;
  UserModel? currentUser;
  AmbassadorModel? currentAmbassador;
  Future<void> createUser(
      {required String name,
      required String email,
      required String password,
      required String phone}) async {
    try {
      await _authRepo.createUser(
          email: email, password: password, phone: phone, name: name);

      Get.back(closeOverlays: true);
      Get.snackbar("Success!", "User created successfully",
          colorText: Colors.white, backgroundColor: Colors.green);
      Get.offAndToNamed(Routes.login);
    } catch (e) {
      Get.back(closeOverlays: true);
      Get.snackbar("Error!", e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      currentUser = await _authRepo.login(email: email, password: password);

      Get.back(closeOverlays: true);

      Get.offAllNamed(Routes.home);
    } catch (e) {
      Get.back(closeOverlays: true);
      Get.snackbar("Error!", e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
    update();
  }

  Future<void> ambassadorLogin({
    required String email,
    required String password,
  }) async {
    try {
      currentAmbassador =
          await _authRepo.ambassadorLogin(email: email, password: password);

      Get.back(closeOverlays: true);

      Get.offAllNamed(Routes.conversation);
    } catch (e) {
      Get.back(closeOverlays: true);
      Get.snackbar("Error!", e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
    update();
  }

  Future<void> resetPassword({
    required String email,
  }) async {
    try {
      await _authRepo.resetPassword(email: email);

      Get.back(closeOverlays: true);
      Get.back();
      Get.snackbar("Email Sent!",
          "An email with password recovery details has been sent to $email",
          colorText: Colors.white, backgroundColor: Colors.green);
    } catch (e) {
      Get.back(closeOverlays: true);
      Get.snackbar("Error!", e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
    update();
  }

  Future<void> ambassadorSignUp(
      {required String email,
      required String name,
      required String phoneNumber,
      required String institute,
      required String department}) async {
    try {
      await _authRepo.ambassadorSignUp(
          email: email,
          name: name,
          phoneNumber: phoneNumber,
          institute: institute,
          department: department);

      Get.back(closeOverlays: true);
      Get.defaultDialog(
          title: 'Success!',
          titleStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                  "Your sign up request has been successfully made. Please wait for further process through an email.",
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  Get.back(closeOverlays: true);
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          radius: 10.0);
    } catch (e) {
      Get.back(closeOverlays: true);
      Get.snackbar("Error!", e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
    update();
  }

  Future<bool> getCurrentUser() async {
    currentUser = await _authRepo.getCurrentUser();
    update();
    if (currentUser == null) {
      return false;
    } else {
      return true;
    }
  }

  Future<bool> getCurrentAmbassador() async {
    currentAmbassador = await _authRepo.getCurrentAmbassador();
    update();
    if (currentAmbassador == null) {
      return false;
    } else {
      return true;
    }
  }

  Future<void> logout() async {
    currentUser = null;
    currentAmbassador = null;
    await FirebaseAuth.instance.signOut();
    update();
  }

  void updateLoginType(LoginType type) {
    loginType = type;
    update();
  }
}

enum LoginType { student, ambassador }
