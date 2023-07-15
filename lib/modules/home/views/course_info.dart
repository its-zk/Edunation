import 'package:edunation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({super.key});

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
        child: Padding(
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
              const Text(
                "Peshawar/Software Engineering/University Name",
                style: TextStyle(
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
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Container(
                          height: Get.height * 0.08,
                          width: Get.width * 0.4,
                          decoration: const BoxDecoration(color: Colors.amber),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: InfoTiles(
                          onTap: () {},
                          iconImage: "assets/icons/location_icon.png",
                          text: "GET LOCATION",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.03),
                        child: InfoTiles(
                          onTap: () {
                            Get.toNamed(Routes.feeStructure);
                          },
                          iconImage: "assets/icons/fee_icon.png",
                          text: "FEE STRUCTURE",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.03),
                        child: InfoTiles(
                          onTap: () {
                            Get.toNamed(Routes.faculty);
                          },
                          iconImage: "assets/icons/faculty_icon.png",
                          text: "FACULTY",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.03),
                        child: InfoTiles(
                          onTap: () {
                            Get.toNamed(Routes.eligibility);
                          },
                          iconImage: "assets/icons/eligibility_icon.png",
                          text: "ELIGIBILITY CRITERIA",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.03),
                        child: InfoTiles(
                          onTap: () {
                            Get.toNamed(Routes.programs);
                          },
                          iconImage: "assets/icons/programs_icon.png",
                          text: "VIEW ALL PROGRAMS",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.03),
                        child: Center(
                          child: Material(
                            elevation: 10,
                            child: Container(
                              height: Get.height * 0.06,
                              width: Get.width * 0.3,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(208, 255, 227, 0.73),
                              ),
                              child: Center(
                                child: Text(
                                  "Apply Now",
                                  style: GoogleFonts.inter(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline),
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
        ),
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
