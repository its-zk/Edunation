import 'package:edunation/modules/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
