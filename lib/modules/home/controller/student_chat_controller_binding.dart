import 'package:edunation/modules/home/controller/student_chat_controller.dart';
import 'package:get/get.dart';

class StudentChatControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StudentChatController());
  }
}
