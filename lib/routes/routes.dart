import 'package:edunation/modules/home/controller/home_controller_binding.dart';
import 'package:edunation/modules/home/views/course_info.dart';
import 'package:edunation/modules/home/views/eligibility.dart';
import 'package:edunation/modules/home/views/faculty.dart';
import 'package:edunation/modules/home/views/fee_structure.dart';
import 'package:edunation/modules/home/views/home.dart';
import 'package:edunation/modules/home/views/programs.dart';
import 'package:edunation/modules/home/views/university_list.dart';
import 'package:edunation/modules/login/views/login.dart';
import 'package:edunation/modules/sign_up_ambassador/views/sign_up_ambassador.dart';
import 'package:edunation/modules/sign_up_student/views/sign_up_student.dart';
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
    GetPage(
        name: home, page: () => const Home(), binding: HomeControllerBinding()),
    GetPage(name: universityList, page: () => const UniversityList()),
    GetPage(name: courseInfo, page: () => const CourseInfo()),
    GetPage(name: feeStructure, page: () => const FeeStructure()),
    GetPage(name: faculty, page: () => const Faculty()),
    GetPage(name: eligibility, page: () => const Eligibility()),
    GetPage(name: programs, page: () => const Programs()),
  ];
}
