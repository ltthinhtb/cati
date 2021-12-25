import 'package:cati/generated/l10n.dart';
import 'package:cati/model/params/index.dart';
import 'package:cati/networks/error_exception.dart';
import 'package:cati/services/index.dart';
import 'package:cati/ui/commons/app_dialog.dart';
import 'package:cati/ui/commons/app_loading.dart';
import 'package:cati/ui/commons/app_snackbar.dart';
import 'package:cati/utils/logger.dart';
import 'package:get/get.dart';

import 'sign_up_state.dart';

class SignUpLogic extends GetxController {
  final SignUpState state = SignUpState();

  ApiService apiService = Get.find();
  AuthService authService = Get.find();

  Future<void> signUp() async {
    AppLoading.showLoading();
    final fullName = state.fullNameController.text;
    final phone = state.phoneController.text;
    final email = state.emailController.text;
    final pass = state.passController.text;
    bool validateFullName = state.formKeyFullName.currentState!.validate();
    bool validatePhone = state.formKeyPhone.currentState!.validate();
    bool validateEmail = state.formKeyEmail.currentState!.validate();
    bool validatePass = state.formKeyPass.currentState!.validate();
    bool validate =
        validateFullName && validatePhone && validateEmail && validatePass;
    if (validate) {
      try {
        SignUpRequest request = SignUpRequest(
            userName: fullName,
            phoneNumber: phone,
            email: email,
            password: pass);
        var response = await apiService.signUp(request);
        await AppDiaLog.showNoticeDialog(
                title: S.current.notice,
                middleText: response?.userMsg ?? "Đăng Ký Thành Công")
            .then((value) => Get.back());
      } on ErrorException catch (error) {
        AppSnackBar.showError(message: error.userMsg);
      } catch (error) {
        logger.e(error.runtimeType);
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
