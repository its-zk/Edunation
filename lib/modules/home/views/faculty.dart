import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Faculty extends StatelessWidget {
  const Faculty({super.key});

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
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
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
                  "Peshawar/Software Engineering/University Name/Faculty",
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
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.04),
                  child: Center(
                    child: Container(
                      height: Get.height * 0.08,
                      width: Get.width * 0.4,
                      decoration: const BoxDecoration(color: Colors.amber),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                Expanded(
                  child: Material(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: Get.height * 0.08, left: 20, right: 20),
                      child: SizedBox(
                        width: Get.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Faculty",
                              style: TextStyle(
                                  fontFamily: 'Advent-pro',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.5,
                            ),
                            Expanded(child:
                                ListView.builder(itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(top: Get.height * 0.03),
                                child: RichText(
                                  text: const TextSpan(
                                      text: 'Teacher Name ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Advent-pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Teacher Role',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Advent-pro',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ]),
                                ),
                              );
                            })),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: Get.height * 0.03, top: Get.height * 0.04),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'For more information, visit this ',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Advent-pro',
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'link',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Advent-pro',
                                  fontWeight: FontWeight.w700,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {})
                          ]),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
