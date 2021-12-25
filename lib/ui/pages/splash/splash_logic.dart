import 'package:cati/router/route_config.dart';
import 'package:cati/services/api/api_service.dart';
import 'package:cati/services/index.dart';
import 'package:get/get.dart';

import 'splash_state.dart';

class SplashLogic extends GetxController {
  final state = SplashState();
  final apiService = Get.find<ApiService>();
  final authService = Get.find<AuthService>();

  void checkLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    authService.removeToken();
    await Get.offAllNamed(RouteConfig.login);
  }
}
