import 'package:edunation/modules/home/controller/fee_comparison_controller.dart';
import 'package:get/get.dart';

class FeeComparisonControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(FeeComparisonController());
  }
}
