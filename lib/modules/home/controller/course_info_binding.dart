import 'package:edunation/modules/home/controller/course_info_controller.dart';
import 'package:get/get.dart';

class CourseInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CourseInfoController());
  }
}
