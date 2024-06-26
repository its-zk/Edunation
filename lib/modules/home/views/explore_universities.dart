import 'package:edunation/modules/common/models/university_model.dart';
import 'package:edunation/modules/home/controller/home_controller.dart';
import 'package:edunation/modules/home/views/university_list.dart';
import 'package:edunation/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreUniversities extends StatelessWidget {
  ExploreUniversities({super.key});
  final universityController = TextEditingController(),
      cityController = TextEditingController(),
      programController = TextEditingController();
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
          },
          child: GetBuilder<HomeController>(builder: (homeController) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
              child: SingleChildScrollView(
                child: GetBuilder<HomeController>(builder: (homeController) {
                  return Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.1),
                          child: const Divider(
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.08),
                          child: const Text(
                            "Select your City",
                            style: TextStyle(
                                fontFamily: "Kabel-light",
                                fontWeight: FontWeight.w300,
                                fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Material(
                            elevation: 15.0,
                            shadowColor: Colors.black,
                            child: DropdownButtonFormField(
                              value: homeController.selectedCity,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "Mandantory";
                                } else {
                                  return null;
                                }
                              },
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent))),
                              isExpanded: true,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              hint: const Text(
                                "City",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: homeController.cities.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                homeController.updateSelectedCity(newValue);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.1),
                          child: const Text(
                            "Select your Program",
                            style: TextStyle(
                                fontFamily: "Kabel-light",
                                fontWeight: FontWeight.w300,
                                fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Material(
                            elevation: 15.0,
                            shadowColor: Colors.black,
                            child: DropdownButtonFormField(
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "Mandantory";
                                } else {
                                  return null;
                                }
                              },
                              value: homeController.selectedProgram,
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent))),
                              elevation: 0,
                              isExpanded: true,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              hint: const Text(
                                "Program",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items:
                                  homeController.programs.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                homeController.updateSelectedProgram(newValue);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.08),
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
                                if (homeController.selectedUniversity == null) {
                                  universityController.clear();
                                }
                                if (homeController.selectedCity == null) {
                                  cityController.clear();
                                }
                                if (homeController.selectedProgram == null) {
                                  programController.clear();
                                }
                                if (formKey.currentState!.validate()) {
                                  UniListArgs uniListArgs = UniListArgs(
                                      program: homeController.selectedProgram!,
                                      universityModel: const UniversityModel(
                                        applyLink: '',
                                        departments: {},
                                        id: '',
                                        location: '',
                                        logo: '',
                                        name: '',
                                        programs: [],
                                      ),
                                      cityName: homeController.selectedCity!);
                                  Get.toNamed(Routes.universityList,
                                      arguments: uniListArgs);
                                }
                              },
                              child: Container(
                                height: Get.height * 0.06,
                                width: Get.width,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(233, 255, 235, 0.73),
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

class HomeFieldSection extends StatelessWidget {
  HomeFieldSection(
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
                                } else if (searchType == SearchTypes.city) {
                                  // Get.find<HomeController>().updateSelectedCity(
                                  //     dropDownList.elementAt(index), false);
                                } else if (searchType == SearchTypes.program) {
                                  // Get.find<HomeController>()
                                  //     .updateSelectedProgram(
                                  //         dropDownList.elementAt(index), false);
                                }
                                Get.find<HomeController>()
                                    .updateShowSuggestions(false);
                                Get.find<HomeController>()
                                    .updateSearchType(null);
                                FocusManager.instance.primaryFocus?.unfocus();
                              }
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
