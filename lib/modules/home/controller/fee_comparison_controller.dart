import 'package:edunation/modules/home/models/fee_structure_model.dart';
import 'package:edunation/modules/home/repo/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeeComparisonController extends GetxController {
  FeeStructureModel? feeStructureModelProgram1, feeStructureModelProgram2;
  final repo = HomeRepo();
  bool isFeeInfoLoaded = false;
  Future<void> getFeeInfo(
      {required String uniId,
      required String program1,
      required String program2}) async {
    try {
      String? program1DocId =
          await repo.getProgramDetails(uniId: uniId, programName: program1);
      String? program2DocId =
          await repo.getProgramDetails(uniId: uniId, programName: program2);

      if (program1DocId == null || program2DocId == null) {
        Get.snackbar("Error!", "An unknown error occured",
            backgroundColor: Colors.red, colorText: Colors.white);
      } else {
        feeStructureModelProgram1 =
            await repo.getFeeStructure(docId: program1DocId);
        feeStructureModelProgram2 =
            await repo.getFeeStructure(docId: program2DocId);

        isFeeInfoLoaded = true;
      }
    } catch (e) {
      isFeeInfoLoaded = true;
      Get.snackbar("Error!", e.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
    }
    update();
  }
}
