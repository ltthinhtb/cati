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
    state.isLoginFail.value = false;
    final email = state.emailTextController.text;
    final password = state.passwordTextController.text;

    /// Validate email and password
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
      } on ErrorException catch (_) {
        validateForm();
      } catch (error) {
        validateForm();
        logger.e(error.toString());
      }
    }
    AppLoading.disMissLoading();
  }

  /// Validate email and password
  void validateForm() {
    /// Use this flag to check login success or not
    state.isLoginFail.value = true;
    state.formKeyEmail.currentState!.validate();
    state.formKeyPass.currentState!.validate();
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
