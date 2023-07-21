import 'package:edunation/modules/common/models/university_model.dart';
import 'package:edunation/modules/home/controller/home_controller.dart';
import 'package:edunation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UniversityList extends StatefulWidget {
  const UniversityList({super.key, required this.uniListArgs});
  final UniListArgs uniListArgs;

  @override
  State<UniversityList> createState() => _UniversityListState();
}

class _UniversityListState extends State<UniversityList> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Get.find<HomeController>()
          .getUniversities(programName: widget.uniListArgs.program);
    });
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
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
          child: GetBuilder<HomeController>(builder: (controller) {
            return !controller.isUniversityLoaded
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
                        "${widget.uniListArgs.cityName}/${widget.uniListArgs.program}",
                        style: const TextStyle(
                          fontSize: 17,
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
                      widget.uniListArgs.cityName.toLowerCase() != 'peshawar'
                          ? const Expanded(
                              child: Center(
                                child: Text(
                                  "Universities with selected program are not available for this city.",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          : Expanded(
                              child: ListView.builder(
                                  itemCount: controller.allUniversities.length,
                                  itemBuilder: (context, index) {
                                    return UniversityCard(
                                      location: controller.allUniversities
                                          .elementAt(index)
                                          .location,
                                      totalSemesters: '8',
                                      totalYears: '4',
                                      uniName: controller.allUniversities
                                          .elementAt(index)
                                          .name,
                                      image: controller.allUniversities
                                          .elementAt(index)
                                          .logo,
                                      onReadMore: () {
                                        UniListArgs uniListArgs = UniListArgs(
                                            program: widget.uniListArgs.program,
                                            cityName:
                                                widget.uniListArgs.cityName,
                                            universityModel: controller
                                                .allUniversities
                                                .elementAt(index));
                                        Get.toNamed(Routes.courseInfo,
                                            arguments: uniListArgs);
                                      },
                                    );
                                  }))
                    ],
                  );
          }),
        ),
      ),
    );
  }
}

class UniversityCard extends StatelessWidget {
  const UniversityCard(
      {super.key,
      required this.location,
      required this.totalSemesters,
      required this.onReadMore,
      required this.totalYears,
      required this.image,
      required this.uniName});
  final String uniName, location, totalSemesters, totalYears, image;
  final Function() onReadMore;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10.0,
      shadowColor: Colors.black45,
      child: SizedBox(
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.08,
                width: Get.width * 0.4,
                child: Image.network(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  uniName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: 'Kabel-light',
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  location,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: 'Kabel-light',
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.08),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "$totalSemesters Semesters/$totalYears Years",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontFamily: 'Kabel-light',
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: GestureDetector(
                        onTap: onReadMore,
                        child: Container(
                          height: Get.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(217, 217, 217, 1)),
                          child: const Center(
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                  fontFamily: 'Kabel-light',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UniListArgs {
  UniListArgs(
      {required this.program,
      required this.cityName,
      required this.universityModel});

  final String program;
  final String cityName;
  final UniversityModel universityModel;
}
