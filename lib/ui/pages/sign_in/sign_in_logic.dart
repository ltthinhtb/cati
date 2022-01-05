import 'package:cati/router/route_config.dart';
import 'package:cati/utils/logger.dart';
import 'package:get/get.dart';
import 'package:cati/networks/error_exception.dart';
import 'package:cati/services/api/api_service.dart';
import 'package:cati/services/auth_service.dart';
import 'package:cati/ui/commons/app_loading.dart';
import 'package:cati/ui/commons/app_snackbar.dart';
import 'package:cati/utils/validator.dart';

import 'sign_in_state.dart';

class SignInLogic extends GetxController with Validator {
  final SignInState state = SignInState();

  ApiService apiService = Get.find();
  AuthService authService = Get.find();

  void signIn() async {
    AppLoading.showLoading();
    final email = state.emailTextController.text;
    final password = state.passwordTextController.text;
    bool validateUser = state.formKeyEmail.currentState!.validate();
    bool validatePass = state.formKeyPass.currentState!.validate();
    bool validate = validateUser && validatePass;
    if (validate) {
      try {
        final result = await apiService.signIn(email, password);
        if (result != null) {
          authService.saveToken(result);
          AppLoading.disMissLoading();
          await Get.offNamed(RouteConfig.main);
        } else {
          signIn();
        }
      } on ErrorException catch (error) {
        AppSnackBar.showError(message: error.userMsg);
      } catch (error) {
        logger.e(error.toString());
      }
    }
    AppLoading.disMissLoading();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
