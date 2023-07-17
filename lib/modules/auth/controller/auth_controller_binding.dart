import 'package:edunation/modules/auth/controller/auth_controller.dart';
import 'package:get/get.dart';

class AuthControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}
