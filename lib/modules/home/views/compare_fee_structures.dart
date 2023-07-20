import 'package:edunation/modules/common/models/university_model.dart';
import 'package:edunation/modules/home/controller/home_controller.dart';
import 'package:edunation/modules/home/views/fee_comparison.dart';
import 'package:edunation/routes/routes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CompareFeeStructures extends StatelessWidget {
  CompareFeeStructures({super.key});
  final universityController = TextEditingController(),
      programController1 = TextEditingController(),
      programController2 = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.chevron_left, color: Colors.black)),
        title: const Text(
          "EDUNATION",
          style: TextStyle(
              fontFamily: "Primetime",
              fontSize: 20,
              color: Color.fromRGBO(70, 79, 88, 1),
              fontWeight: FontWeight.w400),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Get.find<HomeController>().updateShowSuggestions(false);
            Get.find<HomeController>().updateSearchType(null);
            Get.find<HomeController>()
                .filterUniversities(name: '', reset: true);
          },
          child: GetBuilder<HomeController>(builder: (homeController) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
              child: SingleChildScrollView(
                child: GetBuilder<HomeController>(builder: (homeController) {
                  if (homeController.selectedUniversity != null) {
                    universityController.text =
                        homeController.selectedUniversity!;
                  }
                  if (homeController.selectedProgram1 != null) {
                    programController1.text = homeController.selectedProgram1!;
                  }
                  if (homeController.selectedProgram2 != null) {
                    programController2.text = homeController.selectedProgram2!;
                  }
                  return !homeController.isUniversityLoaded
                      ? Center(
                          child: LoadingAnimationWidget.threeRotatingDots(
                              color: Colors.blue, size: 40))
                      : Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.04),
                                child: CompareFeeSection(
                                  onEditingComplete: () {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    Get.find<HomeController>()
                                        .filterUniversities(
                                            name: '', reset: true);
                                  },
                                  onFieldSubmitted: (val) {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    Get.find<HomeController>()
                                        .filterUniversities(
                                            name: '', reset: true);
                                  },
                                  onSaved: (val) {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    Get.find<HomeController>()
                                        .filterUniversities(
                                            name: '', reset: true);
                                  },
                                  onChanged: (val) {
                                    Get.find<HomeController>()
                                        .updateSelectedUniversity("", true);
                                    Get.find<HomeController>()
                                        .filterUniversities(
                                            name: val, reset: false);
                                    if (val.isEmpty) {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(false);
                                      Get.find<HomeController>()
                                          .updateSearchType(null);
                                    } else {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(true);
                                      Get.find<HomeController>()
                                          .updateSearchType(
                                              SearchTypes.university);
                                    }
                                  },
                                  onTap: () {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);

                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  showSuggestions:
                                      homeController.showSuggestions &&
                                          homeController.selectedSearchType ==
                                              SearchTypes.university,
                                  dropDownList: homeController
                                          .filteredUniversities.isEmpty
                                      ? ['No results found']
                                      : homeController.filteredUniversities
                                          .map((e) => e.name)
                                          .toList(),
                                  sectionTitle: 'Select University',
                                  searchType: SearchTypes.university,
                                  controller: universityController,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.08),
                                child: const Divider(
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.04),
                                child: CompareFeeSection(
                                  controller: programController1,
                                  onEditingComplete: () {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  onFieldSubmitted: (val) {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  onSaved: (val) {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  onChanged: (val) {
                                    Get.find<HomeController>()
                                        .updateSelectedCompareProgram1(
                                            "", true);
                                    if (homeController.selectedUniversity !=
                                        null) {
                                      Get.find<HomeController>().filterPrograms(
                                          uniName: homeController
                                              .selectedUniversity!,
                                          program: val,
                                          reset: false);
                                    }
                                    if (val.isEmpty) {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(false);
                                      Get.find<HomeController>()
                                          .updateSearchType(null);
                                    } else {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(true);
                                      Get.find<HomeController>()
                                          .updateSearchType(
                                              SearchTypes.program1);
                                    }
                                  },
                                  onTap: () {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  showSuggestions:
                                      homeController.showSuggestions &&
                                          homeController.selectedSearchType ==
                                              SearchTypes.program1,
                                  dropDownList: homeController
                                              .selectedUniversity ==
                                          null
                                      ? ['No university selected']
                                      : homeController.filteredUniversities
                                              .firstWhere((element) =>
                                                  element.name ==
                                                  homeController
                                                      .selectedUniversity)
                                              .programs
                                              .isEmpty
                                          ? ['No results found']
                                          : homeController.filteredUniversities
                                              .firstWhere((element) =>
                                                  element.name ==
                                                  homeController
                                                      .selectedUniversity)
                                              .programs,
                                  sectionTitle: 'Select First Program',
                                  searchType: SearchTypes.program1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.04),
                                child: CompareFeeSection(
                                  controller: programController2,
                                  onEditingComplete: () {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  onFieldSubmitted: (val) {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  onSaved: (val) {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  onChanged: (val) {
                                    Get.find<HomeController>()
                                        .updateSelectedCompareProgram2(
                                            "", true);
                                    if (homeController.selectedUniversity !=
                                        null) {
                                      Get.find<HomeController>().filterPrograms(
                                          uniName: homeController
                                              .selectedUniversity!,
                                          program: val,
                                          reset: false);
                                    }
                                    if (val.isEmpty) {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(false);
                                      Get.find<HomeController>()
                                          .updateSearchType(null);
                                    } else {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(true);
                                      Get.find<HomeController>()
                                          .updateSearchType(
                                              SearchTypes.program2);
                                    }
                                  },
                                  onTap: () {
                                    Get.find<HomeController>()
                                        .updateShowSuggestions(false);
                                    Get.find<HomeController>()
                                        .updateSearchType(null);
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  showSuggestions:
                                      homeController.showSuggestions &&
                                          homeController.selectedSearchType ==
                                              SearchTypes.program2,
                                  dropDownList: homeController
                                              .selectedUniversity ==
                                          null
                                      ? ['No university selected']
                                      : homeController.filteredUniversities
                                              .firstWhere((element) =>
                                                  element.name ==
                                                  homeController
                                                      .selectedUniversity)
                                              .programs
                                              .isEmpty
                                          ? ['No results found']
                                          : homeController.filteredUniversities
                                              .firstWhere((element) =>
                                                  element.name ==
                                                  homeController
                                                      .selectedUniversity)
                                              .programs,
                                  sectionTitle: 'Select Second Program',
                                  searchType: SearchTypes.program2,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.08),
                                child: const Divider(
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: Get.height * 0.1),
                                child: Material(
                                  elevation: 10.0,
                                  shadowColor: Colors.black,
                                  child: GestureDetector(
                                    onTap: () {
                                      if (homeController.selectedUniversity ==
                                          null) {
                                        universityController.clear();
                                      }
                                      if (homeController.selectedProgram1 ==
                                          null) {
                                        programController1.clear();
                                      }
                                      if (homeController.selectedProgram2 ==
                                          null) {
                                        programController2.clear();
                                      }
                                      if (formKey.currentState!.validate()) {
                                        if (programController1.text.trim() ==
                                            programController2.text.trim()) {
                                          Get.defaultDialog(
                                              title: 'Same Programs!',
                                              titleStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                      "Choose two different programs for comparison.",
                                                      textAlign:
                                                          TextAlign.center),
                                                  const SizedBox(
                                                    height: 30.0,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Get.close(1);
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.indigo,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Text(
                                                          "Back",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              radius: 10.0);
                                        } else {
                                          UniversityModel universityModel =
                                              homeController
                                                  .filteredUniversities
                                                  .firstWhere((element) =>
                                                      element.name
                                                          .toLowerCase() ==
                                                      universityController.text
                                                          .toLowerCase()
                                                          .trim());
                                          FeeComparisonArgs feeComparisonArgs =
                                              FeeComparisonArgs(
                                                  program1: programController1
                                                      .text
                                                      .trim(),
                                                  program2: programController2
                                                      .text
                                                      .trim(),
                                                  universityName:
                                                      universityModel.name,
                                                  logo: universityModel.logo,
                                                  universityId:
                                                      universityModel.id);
                                          Get.toNamed(Routes.feeComparison,
                                              arguments: feeComparisonArgs);
                                        }
                                        // UniListArgs uniListArgs = UniListArgs(
                                        //     program: programController.text,
                                        //     universityModel: homeController
                                        //         .filteredUniversities
                                        //         .firstWhere((element) =>
                                        //             element.name
                                        //                 .toLowerCase() ==
                                        //             universityController.text
                                        //                 .toLowerCase()
                                        //                 .trim()));
                                        // Get.toNamed(Routes.universityList,
                                        //     arguments: uniListArgs);
                                      }
                                    },
                                    child: Container(
                                      height: Get.height * 0.06,
                                      width: Get.width,
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(233, 255, 235, 0.73),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "NEXT",
                                          style: TextStyle(
                                              fontFamily: 'Kabel-light',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                }),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CompareFeeSection extends StatelessWidget {
  CompareFeeSection(
      {super.key,
      required this.showSuggestions,
      required this.dropDownList,
      required this.onChanged,
      required this.sectionTitle,
      required this.controller,
      required this.searchType,
      required this.onEditingComplete,
      required this.onFieldSubmitted,
      required this.onSaved,
      required this.onTap});
  final List<dynamic> dropDownList;
  final SearchTypes searchType;
  final bool showSuggestions;
  final Function(String) onChanged, onFieldSubmitted;
  final Function(String?) onSaved;
  final String sectionTitle;
  final Function() onEditingComplete, onTap;
  final TextEditingController controller;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionTitle,
          style: const TextStyle(
              fontFamily: "Kabel-light",
              fontWeight: FontWeight.w300,
              fontSize: 13),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.black,
            child: TextFormField(
              autofocus: false,
              onChanged: onChanged,
              controller: controller,
              onEditingComplete: onEditingComplete,
              onFieldSubmitted: onFieldSubmitted,
              onSaved: onSaved,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select an option';
                }
                return null;
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.search),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0.0))),
            ),
          ),
        ),
        !showSuggestions
            ? const SizedBox()
            : Material(
                elevation: 10.0,
                shadowColor: Colors.black,
                child: Container(
                  height: Get.height * 0.2,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Scrollbar(
                    // thumbVisibility: true,
                    // controller: scrollController,
                    child: ListView.builder(
                      itemCount: dropDownList.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          ListTile(
                            onTap: () {
                              if (dropDownList
                                          .elementAt(index)
                                          .toString()
                                          .toLowerCase() ==
                                      'no university selected' ||
                                  dropDownList
                                          .elementAt(index)
                                          .toString()
                                          .toLowerCase() ==
                                      'no results found') {
                              } else {
                                if (searchType == SearchTypes.university) {
                                  Get.find<HomeController>()
                                      .updateSelectedUniversity(
                                          dropDownList.elementAt(index), false);
                                } else if (searchType == SearchTypes.program1) {
                                  Get.find<HomeController>()
                                      .updateSelectedCompareProgram1(
                                          dropDownList.elementAt(index), false);
                                } else if (searchType == SearchTypes.program2) {
                                  Get.find<HomeController>()
                                      .updateSelectedCompareProgram2(
                                          dropDownList.elementAt(index), false);
                                }
                              }
                              Get.find<HomeController>()
                                  .updateShowSuggestions(false);
                              Get.find<HomeController>().updateSearchType(null);
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            title: Text(dropDownList.elementAt(index)),
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
      ],
    );
  }
}
