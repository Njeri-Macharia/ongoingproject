import 'package:get/get.dart';
import 'package:ongoingproject/pages/dashboard.dart';

import 'package:ongoingproject/pages/login.dart';
import 'package:ongoingproject/pages/newbusiness.dart';
import 'package:ongoingproject/pages/onboardingpage.dart';
import 'package:ongoingproject/pages/registration.dart';

class Routes {
  static var routes=[
     GetPage(name: "/", page: () => const Onboardingpage()),
    GetPage(name: "/register", page: () => const Registration()),
    GetPage(name: "/newbusiness", page: () => const Newbusiness()),
    GetPage(name: "/login", page: () => const LoginPage()),
    GetPage(name: "/Dashboard", page: () => const DashboardPage()),
  ];
}