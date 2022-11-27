import 'package:get/get.dart';
import 'package:job_now/pages/login/login_page.dart';
import 'package:job_now/pages/welcome/welcome_page.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(name: "/", page: () => WelcomePage()),
    GetPage(name: "/login", page: () => LoginPage())
  ];
}
