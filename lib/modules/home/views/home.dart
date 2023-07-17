import 'package:edunation/modules/auth/controller/auth_controller.dart';
import 'package:edunation/modules/home/controller/home_controller.dart';
import 'package:edunation/modules/home/views/university_list.dart';
import 'package:edunation/routes/routes.dart';
import 'package:edunation/utils/dialogues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final universityController = TextEditingController(),
      cityController = TextEditingController(),
      programController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const SafeArea(child: HomeDrawer()),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: const Icon(Icons.menu, color: Colors.black)),
        centerTitle: true,
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
                  if (homeController.selectedCity != null) {
                    cityController.text = homeController.selectedCity!;
                  }
                  if (homeController.selectedProgram != null) {
                    programController.text = homeController.selectedProgram!;
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
                                child: HomeFieldSection(
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
                                child: HomeFieldSection(
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
                                    if (val.isEmpty) {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(false);
                                      Get.find<HomeController>()
                                          .updateSearchType(null);
                                    } else {
                                      Get.find<HomeController>()
                                          .updateShowSuggestions(true);
                                      Get.find<HomeController>()
                                          .updateSearchType(SearchTypes.city);
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
                                              SearchTypes.city,
                                  dropDownList: const ['Peshawar'],
                                  sectionTitle: 'Select your City',
                                  searchType: SearchTypes.city,
                                  controller: cityController,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.04),
                                child: HomeFieldSection(
                                  controller: programController,
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
                                              SearchTypes.program);
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
                                              SearchTypes.program,
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
                                  sectionTitle: 'Select your Program',
                                  searchType: SearchTypes.program,
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
                                    EdgeInsets.only(top: Get.height * 0.08),
                                child: Material(
                                  elevation: 10.0,
                                  shadowColor: Colors.black,
                                  child: Container(
                                    height: Get.height * 0.06,
                                    width: Get.width,
                                    decoration: const BoxDecoration(
                                      color:
                                          Color.fromRGBO(217, 217, 217, 0.73),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "COMPARE FEE STRUCTURES",
                                        style: TextStyle(
                                            fontFamily: 'Kabel-light',
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.02),
                                child: Material(
                                  elevation: 10.0,
                                  shadowColor: Colors.black,
                                  child: GestureDetector(
                                    onTap: () {
                                      if (homeController.selectedUniversity ==
                                          null) {
                                        universityController.clear();
                                      }
                                      if (homeController.selectedCity == null) {
                                        cityController.clear();
                                      }
                                      if (homeController.selectedProgram ==
                                          null) {
                                        programController.clear();
                                      }
                                      if (formKey.currentState!.validate()) {
                                        UniListArgs uniListArgs = UniListArgs(
                                            program: programController.text,
                                            universityModel: homeController
                                                .filteredUniversities
                                                .firstWhere((element) =>
                                                    element.name
                                                        .toLowerCase() ==
                                                    universityController.text
                                                        .toLowerCase()
                                                        .trim()));
                                        Get.toNamed(Routes.universityList,
                                            arguments: uniListArgs);
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

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(Get.find<AuthController>().currentUser!.name),
            accountEmail: Text(Get.find<AuthController>().currentUser!.email),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                Get.find<AuthController>().currentUser!.name[0],
                style: const TextStyle(fontSize: 40.0, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () async {
              showLoadingDialogue(context: context);
              await Get.find<AuthController>().logout();
              Get.offAllNamed(Routes.welcome);
            },
          ),
        ],
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
                                          dropDownList.elementAt(index));
                                } else if (searchType == SearchTypes.city) {
                                  Get.find<HomeController>().updateSelectedCity(
                                      dropDownList.elementAt(index));
                                } else if (searchType == SearchTypes.program) {
                                  Get.find<HomeController>()
                                      .updateSelectedProgram(
                                          dropDownList.elementAt(index));
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
