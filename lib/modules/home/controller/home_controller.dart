import 'package:edunation/modules/common/models/university_model.dart';
import 'package:edunation/modules/home/repo/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getAllUniversities();
    super.onInit();
  }

  bool showSuggestions = false;
  SearchTypes? selectedSearchType;
  bool isUniversityLoaded = false;
  String? selectedUniversity, selectedCity, selectedProgram;
  String? selectedProgram1, selectedProgram2;
  List<String> cities = ['Peshawar', 'Mardan', 'Nowshera', 'Abottobad'];
  List<String> programs = [
    'BS Software Engineering',
    'BS Computer Science',
    'BS English',
    'BBA',
    'BS Accounting',
    'BS Data Science',
    'BS Social Sciences',
    'BS Economics'
  ];
  List<UniversityModel> allUniversities = [], filteredUniversities = [];

  Future<void> getAllUniversities() async {
    try {
      isUniversityLoaded = false;

      update();
      final repo = HomeRepo();
      allUniversities = await repo.getAllUniversities();
      filteredUniversities = [...allUniversities];
      isUniversityLoaded = true;
    } catch (e) {
      isUniversityLoaded = true;
      Get.snackbar("Error!", e.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
    }
    update();
  }

  Future<void> getUniversities({required String programName}) async {
    try {
      isUniversityLoaded = false;

      update();
      final repo = HomeRepo();
      allUniversities = await repo.getUniversities(programName: programName);
      filteredUniversities = [...allUniversities];
      isUniversityLoaded = true;
    } catch (e) {
      isUniversityLoaded = true;
      Get.snackbar("Error!", e.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
    }
    update();
  }

  void filterUniversities({required String name, required bool reset}) {
    if (reset) {
      filteredUniversities = [...allUniversities];
    } else if (name == "" || name.isEmpty) {
      filteredUniversities = [...allUniversities];
    } else {
      filteredUniversities = [...allUniversities];
      filteredUniversities.removeWhere((element) =>
          !element.name.toLowerCase().contains(name.toLowerCase()));
    }
    update();
  }

  void filterPrograms(
      {required String uniName, required String program, required bool reset}) {
    if (reset) {
      filteredUniversities = [...allUniversities];
    } else if (uniName == "" || uniName.isEmpty) {
      filteredUniversities = [...allUniversities];
    } else {
      filteredUniversities = [...allUniversities];
      UniversityModel universityModel =
          filteredUniversities.firstWhere((element) => element.name == uniName);

      List programs = universityModel.programs
          .where((element) =>
              element.toString().toLowerCase().contains(program.toLowerCase()))
          .toList();
      // ignore: unused_result
      universityModel = universityModel.copyWith(programs: programs);
      filteredUniversities[filteredUniversities.indexWhere(
          (element) => element.id == universityModel.id)] = universityModel;
    }
    update();
  }

  void updateShowSuggestions(bool val) {
    if (val) {
      if (showSuggestions) {
      } else {
        showSuggestions = true;
        update();
      }
    } else {
      showSuggestions = false;
      update();
    }
  }

  void updateSearchType(SearchTypes? searchType) {
    if (searchType != selectedSearchType) {
      selectedSearchType = searchType;
      update();
    }
  }

  void updateSelectedUniversity(String val, bool fromOnChanged) {
    if (fromOnChanged) {
      if (selectedUniversity != null) {
        selectedUniversity = null;
        update();
      }
    } else {
      selectedUniversity = val;
      update();
    }
  }

  void updateSelectedCity(String? val) {
    selectedCity = val;
    update();
  }

  void updateSelectedProgram(String? val) {
    selectedProgram = val;
    update();
  }

  void updateSelectedCompareProgram1(String val, bool fromOnChanged) {
    if (fromOnChanged) {
      if (selectedProgram1 != null) {
        selectedProgram1 = null;
        update();
      }
    } else {
      selectedProgram1 = val;
      update();
    }
  }

  void updateSelectedCompareProgram2(String val, bool fromOnChanged) {
    if (fromOnChanged) {
      if (selectedProgram2 != null) {
        selectedProgram2 = null;
        update();
      }
    } else {
      selectedProgram2 = val;
      update();
    }
  }
}

enum SearchTypes { university, city, program, program1, program2 }
