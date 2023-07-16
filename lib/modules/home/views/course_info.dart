import 'package:edunation/modules/home/controller/course_info_controller.dart';
import 'package:edunation/modules/home/views/university_list.dart';
import 'package:edunation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseInfo extends StatefulWidget {
  const CourseInfo({super.key, required this.uniListArgs});
  final UniListArgs uniListArgs;

  @override
  State<CourseInfo> createState() => _CourseInfoState();
}

class _CourseInfoState extends State<CourseInfo> {
  @override
  void initState() {
    Get.find<CourseInfoController>().getCourseInfo(
        uniId: widget.uniListArgs.universityModel.id,
        program: widget.uniListArgs.program);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.chevron_left, color: Colors.black)),
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
        child:
            GetBuilder<CourseInfoController>(builder: (courseInfoController) {
          return !courseInfoController.isCourseInfoLoaded
              ? Center(
                  child: LoadingAnimationWidget.threeRotatingDots(
                      color: Colors.blue, size: 40),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Selected:",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Peshawar/${widget.uniListArgs.program}/${widget.uniListArgs.universityModel.name}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Divider(
                          color: Colors.black,
                          thickness: 0.5,
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.04),
                                child: SizedBox(
                                  height: Get.height * 0.08,
                                  width: Get.width * 0.4,
                                  child: Image.network(
                                      widget.uniListArgs.universityModel.logo),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.04),
                                child: InfoTiles(
                                  onTap: () async {
                                    final Uri url = Uri.parse(
                                        "https://goo.gl/maps/8uGY1L1LDtULoYX78");

                                    await launchUrl(url);
                                  },
                                  iconImage: "assets/icons/location_icon.png",
                                  text: "GET LOCATION",
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.03),
                                child: InfoTiles(
                                  onTap: () {
                                    Get.toNamed(Routes.feeStructure,
                                        arguments: widget.uniListArgs);
                                  },
                                  iconImage: "assets/icons/fee_icon.png",
                                  text: "FEE STRUCTURE",
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.03),
                                child: InfoTiles(
                                  onTap: () {
                                    Get.toNamed(Routes.faculty,
                                        arguments: widget.uniListArgs);
                                  },
                                  iconImage: "assets/icons/faculty_icon.png",
                                  text: "FACULTY",
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.03),
                                child: InfoTiles(
                                  onTap: () {
                                    Get.toNamed(Routes.eligibility,
                                        arguments: widget.uniListArgs);
                                  },
                                  iconImage:
                                      "assets/icons/eligibility_icon.png",
                                  text: "ELIGIBILITY CRITERIA",
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.03),
                                child: InfoTiles(
                                  onTap: () {
                                    Get.toNamed(Routes.programs,
                                        arguments: widget.uniListArgs);
                                  },
                                  iconImage: "assets/icons/programs_icon.png",
                                  text: "VIEW ALL PROGRAMS",
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.03),
                                child: Center(
                                  child: Material(
                                    elevation: 10,
                                    child: GestureDetector(
                                      onTap: () async {
                                        final Uri url = Uri.parse(widget
                                            .uniListArgs
                                            .universityModel
                                            .applyLink);

                                        await launchUrl(url);
                                      },
                                      child: Container(
                                        height: Get.height * 0.06,
                                        width: Get.width * 0.3,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(
                                              208, 255, 227, 0.73),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Apply Now",
                                            style: GoogleFonts.inter(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 12.0),
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: Get.height * 0.02),
                        child: Center(
                          child: Material(
                            elevation: 10,
                            child: Container(
                              height: Get.height * 0.06,
                              width: Get.width * 0.7,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(208, 255, 227, 0.73),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Icon(Icons.person, color: Colors.black),
                                    SizedBox(width: 5),
                                    Center(
                                      child: Text(
                                        "TALK TO AN AMBASSADOR",
                                        style: TextStyle(
                                          fontFamily: 'Kabel-light',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
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
  }
}

class InfoTiles extends StatelessWidget {
  const InfoTiles(
      {super.key,
      required this.iconImage,
      required this.text,
      required this.onTap});
  final String text, iconImage;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: Get.height * 0.06,
        child: Material(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: Get.width * 0.1,
                    child: Image.asset(
                      iconImage,
                      scale: 4,
                    )),
                const SizedBox(width: 5),
                Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'Kabel-light',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
