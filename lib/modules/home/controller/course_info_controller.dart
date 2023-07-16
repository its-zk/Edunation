import 'package:edunation/modules/home/models/eligibility_model.dart';
import 'package:edunation/modules/home/models/faculty_model.dart';
import 'package:edunation/modules/home/models/fee_structure_model.dart';
import 'package:edunation/modules/home/repo/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseInfoController extends GetxController {
  final repo = HomeRepo();
  FeeStructureModel? feeStructureModel;
  EligibilityModel? eligibilityModel;
  FacultyModel? facultyModel;
  bool isCourseInfoLoaded = false;
  Future<void> getCourseInfo(
      {required String uniId, required String program}) async {
    try {
      String? docId =
          await repo.getProgramDetails(uniId: uniId, programName: program);

      if (docId == null) {
        Get.snackbar("Error!", "An unknown error occured",
            backgroundColor: Colors.red, colorText: Colors.white);
      } else {
        feeStructureModel = await repo.getFeeStructure(docId: docId);
        eligibilityModel = await repo.getEligibility(docId: docId);
        facultyModel = await repo.getFaculty(docId: docId);
        isCourseInfoLoaded = true;
      }
    } catch (e) {
      isCourseInfoLoaded = true;
      Get.snackbar("Error!", e.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
    }
    update();
  }
}
