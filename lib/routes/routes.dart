import 'package:edunation/modules/ambassador/conversation/views/chat.dart';
import 'package:edunation/modules/ambassador/conversation/views/conversation.dart';
import 'package:edunation/modules/auth/forgot_password/forgot_password.dart';
import 'package:edunation/modules/auth/sign_up_ambassador/views/sign_up_ambassador.dart';
import 'package:edunation/modules/auth/sign_up_student/views/sign_up_student.dart';
import 'package:edunation/modules/home/controller/course_info_binding.dart';
import 'package:edunation/modules/home/controller/fee_comparison_controller_binding.dart';
import 'package:edunation/modules/home/controller/home_controller_binding.dart';
import 'package:edunation/modules/home/controller/student_chat_controller_binding.dart';
import 'package:edunation/modules/home/models/chat_details_model.dart';
import 'package:edunation/modules/home/views/compare_fee_structures.dart';
import 'package:edunation/modules/home/views/course_info.dart';
import 'package:edunation/modules/home/views/eligibility.dart';
import 'package:edunation/modules/home/views/faculty.dart';
import 'package:edunation/modules/home/views/fee_comparison.dart';
import 'package:edunation/modules/home/views/fee_structure.dart';
import 'package:edunation/modules/home/views/explore_universities.dart';
import 'package:edunation/modules/home/views/home.dart';
import 'package:edunation/modules/home/views/programs.dart';
import 'package:edunation/modules/home/views/student_chat.dart';
import 'package:edunation/modules/home/views/university_list.dart';
import 'package:edunation/modules/auth/login/views/login.dart';
import 'package:edunation/modules/welcome/views/welcome.dart';
import 'package:edunation/splash.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const splash = '/splash';
  static const welcome = '/welcome';
  static const signUpStudent = '/signUpStudent';
  static const signUpAmbassador = '/signUpAmbassador';
  static const login = '/login';
  static const home = '/home';
  static const universityList = '/universityList';
  static const courseInfo = '/courseInfo';
  static const feeStructure = '/feeStructure';
  static const faculty = '/faculty';
  static const eligibility = '/eligibility';
  static const programs = '/programs';
  static const forgotPassword = '/forgotPassword';
  static const conversation = '/conversation';
  static const chat = '/chat';
  static const studentChat = '/studentChat';
  static const exploreUniversities = '/exploreUniversities';
  static const compareFeeStructures = '/compareFeeStructures';
  static const feeComparison = '/feeComparison';

  static final List<GetPage> getPages = [
    GetPage(
      name: splash,
      page: () => const Splash(),
    ),
    GetPage(
      name: welcome,
      page: () => const Welcome(),
    ),
    GetPage(
      name: signUpStudent,
      page: () => SignUpStudent(),
    ),
    GetPage(
      name: signUpAmbassador,
      page: () => SignUpAmbassador(),
    ),
    GetPage(
      name: login,
      page: () => Login(),
    ),
    GetPage(name: home, page: () => Home()),
    GetPage(
        name: exploreUniversities,
        page: () => ExploreUniversities(),
        binding: HomeControllerBinding()),
    GetPage(
        name: feeComparison,
        page: () => FeeComparsion(
              feeComparisonArgs: Get.arguments as FeeComparisonArgs,
            ),
        binding: FeeComparisonControllerBinding()),
    GetPage(
        name: compareFeeStructures,
        page: () => CompareFeeStructures(),
        binding: HomeControllerBinding()),
    GetPage(
        name: universityList,
        page: () => UniversityList(
              uniListArgs: Get.arguments as UniListArgs,
            )),
    GetPage(
        name: courseInfo,
        page: () => CourseInfo(
              uniListArgs: Get.arguments as UniListArgs,
            ),
        binding: CourseInfoBinding()),
    GetPage(
        name: feeStructure,
        page: () => FeeStructure(
              uniListArgs: Get.arguments as UniListArgs,
            )),
    GetPage(
        name: faculty,
        page: () => Faculty(
              uniListArgs: Get.arguments as UniListArgs,
            )),
    GetPage(
        name: eligibility,
        page: () => Eligibility(
              uniListArgs: Get.arguments as UniListArgs,
            )),
    GetPage(
        name: programs,
        page: () => Programs(
              uniListArgs: Get.arguments as UniListArgs,
            )),
    GetPage(name: forgotPassword, page: () => ForgotPassword()),
    GetPage(name: conversation, page: () => Conversation()),
    GetPage(
        name: chat,
        page: () => Chat(
              chatDetailsModel: Get.arguments as ChatDetailsModel,
            )),
    GetPage(
        name: studentChat,
        page: () => StudentChat(
              uniListArgs: Get.arguments as UniListArgs,
            ),
        binding: StudentChatControllerBinding()),
  ];
}
