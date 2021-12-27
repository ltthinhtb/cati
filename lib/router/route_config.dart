import 'package:cati/ui/pages/main/main_view.dart';
import 'package:cati/ui/pages/sign_in/sign_in_view.dart';
import 'package:cati/ui/pages/splash/splash_view.dart';
import 'package:get/get.dart';

class RouteConfig {
  ///main page
  static const String splash = "/splash";
  static const String main = "/main";
  static const String login = "/login";
  static const String signUp = "/sign_up";

  ///Alias ​​mapping page
  static final List<GetPage> getPages = [
    GetPage(name: splash, page: () => const SplashPage()),
    GetPage(name: main, page: () => const MainPage()),
    GetPage(name: login, page: () => const SignInPage()),
  ];
}
