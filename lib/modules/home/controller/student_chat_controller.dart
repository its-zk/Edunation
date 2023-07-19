import 'package:edunation/modules/home/models/ambassador_model.dart';
import 'package:edunation/modules/home/repo/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentChatController extends GetxController {
  final repo = HomeRepo();
  AmbassadorModel? ambassador;
  bool isAmbassadorLoaded = false;
  String? docId;

  Future<void> getAmbassador(
      {required String programName, required String universityId}) async {
    try {
      ambassador = await repo.getAmbassador(
          programName: programName, universityId: universityId);
      updateIsAmbassadorLoaded(true);
    } catch (e) {
      Get.snackbar("Error!", e.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
    }
    update();
  }

  void updateIsAmbassadorLoaded(bool val) {
    isAmbassadorLoaded = val;
    update();
  }
}
