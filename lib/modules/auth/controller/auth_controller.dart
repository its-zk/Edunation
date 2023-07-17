import 'package:edunation/modules/auth/models/user_model.dart';
import 'package:edunation/modules/auth/repo/auth_repo.dart';
import 'package:edunation/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final _authRepo = AuthRepo();
  UserModel? currentUser;
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

  Future<void> resetPassword({
    required String email,
  }) async {
    try {
      await _authRepo.resetPassword(email: email);

      Get.back(closeOverlays: true);
      Get.snackbar("Email Sent!",
          "An email with password recovery details has been sent to $email",
          colorText: Colors.white, backgroundColor: Colors.green);
      Get.offAllNamed(Routes.home);
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

  Future<void> logout() async {
    currentUser = null;
    await FirebaseAuth.instance.signOut();
    update();
  }
}
