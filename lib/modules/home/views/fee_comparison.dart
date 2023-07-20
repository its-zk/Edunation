import 'package:edunation/modules/home/controller/fee_comparison_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class FeeComparsion extends StatefulWidget {
  const FeeComparsion({super.key, required this.feeComparisonArgs});
  final FeeComparisonArgs feeComparisonArgs;

  @override
  State<FeeComparsion> createState() => _FeeComparsionState();
}

class _FeeComparsionState extends State<FeeComparsion> {
  @override
  void initState() {
    Get.find<FeeComparisonController>().getFeeInfo(
        uniId: widget.feeComparisonArgs.universityId,
        program1: widget.feeComparisonArgs.program1,
        program2: widget.feeComparisonArgs.program2);
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
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
            child: GetBuilder<FeeComparisonController>(builder: (controller) {
              return !controller.isFeeInfoLoaded
                  ? Center(
                      child: LoadingAnimationWidget.threeRotatingDots(
                          color: Colors.blue, size: 40))
                  : Column(
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
                          "Peshawar/${widget.feeComparisonArgs.program1}-${widget.feeComparisonArgs.program2}/${widget.feeComparisonArgs.universityName}/Fee Comparison",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.04),
                          child: Center(
                            child: SizedBox(
                              height: Get.height * 0.08,
                              width: Get.width * 0.4,
                              child:
                                  Image.network(widget.feeComparisonArgs.logo),
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
                        Expanded(
                          child: Scrollbar(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: Get.height * 0.03),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: Get.height * 0.6,
                                      child: Material(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: Get.height * 0.08,
                                              left: 20,
                                              right: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  const Expanded(
                                                      flex: 2,
                                                      child: SizedBox()),
                                                  Expanded(
                                                    child: Text(
                                                      "Regular\n(${widget.feeComparisonArgs.program1})",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      "Regular\n(${widget.feeComparisonArgs.program2})",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      "Difference",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                thickness: 0.5,
                                              ),
                                              Expanded(
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    children: [
                                                      ...List.generate(
                                                          controller
                                                                  .feeStructureModelProgram1!
                                                                  .feeStructure
                                                                  .length -
                                                              1, (index) {
                                                        final semesterNumber =
                                                            index + 1;
                                                        String semesterText =
                                                            "${getOrdinalNumber(semesterNumber)} Semester";
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 12),
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                flex: 2,
                                                                child: Text(
                                                                  semesterText,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  width: 5),
                                                              Expanded(
                                                                child: Text(
                                                                  controller
                                                                      .feeStructureModelProgram1!
                                                                      .feeStructure[
                                                                          semesterText]![
                                                                          'regular']
                                                                      .toString(),
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  controller
                                                                      .feeStructureModelProgram2!
                                                                      .feeStructure[
                                                                          semesterText]![
                                                                          'regular']
                                                                      .toString(),
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  getDifference(
                                                                          controller.feeStructureModelProgram1!.feeStructure[semesterText]![
                                                                              'regular']!,
                                                                          controller.feeStructureModelProgram2!.feeStructure[semesterText]![
                                                                              'regular']!)
                                                                      .toString()
                                                                      .replaceAll(
                                                                          "-",
                                                                          ""),
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      })
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                thickness: 0.5,
                                              ),
                                              Row(
                                                children: [
                                                  const Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      "TOTAL",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      controller
                                                          .feeStructureModelProgram1!
                                                          .feeStructure[
                                                              'Total']![
                                                              'regular']
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      controller
                                                          .feeStructureModelProgram2!
                                                          .feeStructure[
                                                              'Total']![
                                                              'regular']
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      getDifference(
                                                              controller.feeStructureModelProgram1!
                                                                          .feeStructure[
                                                                      'Total']![
                                                                  'regular']!,
                                                              controller.feeStructureModelProgram2!
                                                                          .feeStructure[
                                                                      'Total']![
                                                                  'regular']!)
                                                          .toString()
                                                          .replaceAll("-", ""),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ],
                                              ),
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
                                  //Partial section below:
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: Get.height * 0.6,
                                      child: Material(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: Get.height * 0.08,
                                              left: 20,
                                              right: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  const Expanded(
                                                      flex: 2,
                                                      child: SizedBox()),
                                                  Expanded(
                                                    child: Text(
                                                      "Partial\nScholarship\n(${widget.feeComparisonArgs.program1})",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      "Partial\nScholarship\n(${widget.feeComparisonArgs.program2})",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      "Difference",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                thickness: 0.5,
                                              ),
                                              Expanded(
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    children: [
                                                      ...List.generate(
                                                          controller
                                                                  .feeStructureModelProgram1!
                                                                  .feeStructure
                                                                  .length -
                                                              1, (index) {
                                                        final semesterNumber =
                                                            index + 1;
                                                        String semesterText =
                                                            "${getOrdinalNumber(semesterNumber)} Semester";
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 12),
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                flex: 2,
                                                                child: Text(
                                                                  semesterText,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  width: 5),
                                                              Expanded(
                                                                child: Text(
                                                                  controller
                                                                      .feeStructureModelProgram1!
                                                                      .feeStructure[
                                                                          semesterText]![
                                                                          'partialScholarship']
                                                                      .toString(),
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  controller
                                                                      .feeStructureModelProgram2!
                                                                      .feeStructure[
                                                                          semesterText]![
                                                                          'partialScholarship']
                                                                      .toString(),
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  getDifference(
                                                                          controller.feeStructureModelProgram1!.feeStructure[semesterText]![
                                                                              'partialScholarship']!,
                                                                          controller.feeStructureModelProgram2!.feeStructure[semesterText]![
                                                                              'partialScholarship']!)
                                                                      .toString()
                                                                      .replaceAll(
                                                                          "-",
                                                                          ""),
                                                                  style:
                                                                      const TextStyle(
                                                                    fontFamily:
                                                                        'Advent-pro',
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      })
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                thickness: 0.5,
                                              ),
                                              Row(
                                                children: [
                                                  const Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      "TOTAL",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      controller
                                                          .feeStructureModelProgram1!
                                                          .feeStructure[
                                                              'Total']![
                                                              'partialScholarship']
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      controller
                                                          .feeStructureModelProgram2!
                                                          .feeStructure[
                                                              'Total']![
                                                              'partialScholarship']
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      getDifference(
                                                              controller.feeStructureModelProgram1!
                                                                          .feeStructure[
                                                                      'Total']![
                                                                  'partialScholarship']!,
                                                              controller.feeStructureModelProgram2!
                                                                          .feeStructure[
                                                                      'Total']![
                                                                  'partialScholarship']!)
                                                          .toString()
                                                          .replaceAll("-", ""),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Advent-pro',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ],
                                              ),
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
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: Get.height * 0.03,
                              top: Get.height * 0.04),
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
                                          ..onTap = () async {
                                            final Uri url = Uri.parse(controller
                                                .feeStructureModelProgram1!
                                                .link);

                                            await launchUrl(url,
                                                mode: LaunchMode
                                                    .externalNonBrowserApplication);
                                          })
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    );
            })),
      ),
    );
  }
}

String getOrdinalNumber(int number) {
  if (number >= 11 && number <= 13) {
    return '${number}th';
  } else {
    switch (number % 10) {
      case 1:
        return '${number}st';
      case 2:
        return '${number}nd';
      case 3:
        return '${number}rd';
      default:
        return '${number}th';
    }
  }
}

class FeeComparisonArgs {
  FeeComparisonArgs(
      {required this.program1,
      required this.program2,
      required this.universityName,
      required this.logo,
      required this.universityId});
  final String program1, program2, universityId, universityName, logo;
}

int getDifference(int val1, int val2) {
  return val1 - val2;
}
