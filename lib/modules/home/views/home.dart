import 'package:edunation/modules/home/controller/home_controller.dart';
import 'package:edunation/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
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
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
            child: SingleChildScrollView(
              child: GetBuilder<HomeController>(builder: (homeController) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.04),
                      child: HomeFieldSection(
                        onEditingComplete: () {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onFieldSubmitted: (val) {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onSaved: (val) {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onChanged: (val) {
                          if (val.isEmpty) {
                            Get.find<HomeController>()
                                .updateShowSuggestions(false);
                            Get.find<HomeController>().updateSearchType(null);
                          } else {
                            Get.find<HomeController>()
                                .updateShowSuggestions(true);
                            Get.find<HomeController>()
                                .updateSearchType(SearchTypes.university);
                          }
                        },
                        onTap: () {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        showSuggestions: homeController.showSuggestions &&
                            homeController.selectedSearchType ==
                                SearchTypes.university,
                        unviersities: const ['aasd', 'asddsa'],
                        sectionTitle: 'Select University',
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
                      padding: EdgeInsets.only(top: Get.height * 0.04),
                      child: HomeFieldSection(
                        onEditingComplete: () {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onFieldSubmitted: (val) {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onSaved: (val) {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onChanged: (val) {
                          if (val.isEmpty) {
                            Get.find<HomeController>()
                                .updateShowSuggestions(false);
                            Get.find<HomeController>().updateSearchType(null);
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
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        showSuggestions: homeController.showSuggestions &&
                            homeController.selectedSearchType ==
                                SearchTypes.city,
                        unviersities: const ['aasddd', 'asddsa'],
                        sectionTitle: 'Select your City',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.04),
                      child: HomeFieldSection(
                        onEditingComplete: () {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onFieldSubmitted: (val) {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onSaved: (val) {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onChanged: (val) {
                          if (val.isEmpty) {
                            Get.find<HomeController>()
                                .updateShowSuggestions(false);
                            Get.find<HomeController>().updateSearchType(null);
                          } else {
                            Get.find<HomeController>()
                                .updateShowSuggestions(true);
                            Get.find<HomeController>()
                                .updateSearchType(SearchTypes.program);
                          }
                        },
                        onTap: () {
                          Get.find<HomeController>()
                              .updateShowSuggestions(false);
                          Get.find<HomeController>().updateSearchType(null);
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        showSuggestions: homeController.showSuggestions &&
                            homeController.selectedSearchType ==
                                SearchTypes.program,
                        unviersities: const ['aasddd', 'asddsa'],
                        sectionTitle: 'Select your Program',
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
                      padding: EdgeInsets.only(top: Get.height * 0.08),
                      child: Material(
                        elevation: 10.0,
                        shadowColor: Colors.black,
                        child: Container(
                          height: Get.height * 0.06,
                          width: Get.width,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 0.73),
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
                      padding: EdgeInsets.only(top: Get.height * 0.02),
                      child: Material(
                        elevation: 10.0,
                        shadowColor: Colors.black,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.universityList);
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
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeFieldSection extends StatelessWidget {
  HomeFieldSection(
      {super.key,
      required this.showSuggestions,
      required this.unviersities,
      required this.onChanged,
      required this.sectionTitle,
      required this.onEditingComplete,
      required this.onFieldSubmitted,
      required this.onSaved,
      required this.onTap});
  final List<String> unviersities;
  final bool showSuggestions;
  final Function(String) onChanged, onFieldSubmitted;
  final Function(String?) onSaved;
  final String sectionTitle;
  final Function() onTap, onEditingComplete;

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
              onEditingComplete: onEditingComplete,
              onFieldSubmitted: onFieldSubmitted,
              onSaved: onSaved,
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
                      itemCount: unviersities.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          ListTile(
                            onTap: onTap,
                            title: Text(unviersities.elementAt(index)),
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
