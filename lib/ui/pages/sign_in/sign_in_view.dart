import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/router/route_config.dart';
import 'package:cati/ui/widgets/button/app_common_button.dart';
import 'package:cati/ui/widgets/textfields/app_text_field.dart';
import 'package:cati/utils/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'sign_in_logic.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with Validator {
  final logic = Get.put(SignInLogic());
  final state = Get.find<SignInLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: AppDimens.dimen24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: AppDimens.dimen60),
                Image.asset(
                  AppImages.verticalLogoText,
                  height: 140,
                ),
                SizedBox(
                  height: 110,
                  child: state.isLoginFail.value
                      ? Center(
                          child: Text(
                            'Sai số email hoặc mật khẩu. Vui lòng\nthử lại',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: AppColors.red, height: 1.4),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : Column(
                          children: [
                            Text(
                              'Chào mừng đến với Catiedu',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: AppColors.green,
                                    fontWeight: FontWeight.w600,
                                    fontSize: AppDimens.dimen18,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: AppDimens.dimen4),
                            Text(
                              'Đăng nhập để tiếp tục',
                              style: Theme.of(context).textTheme.subtitle2,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                ),

                /// Email field
                Form(
                  key: state.formKeyEmail,
                  child: AppTextFieldWidget(
                    hintText: 'Email',
                    inputController: state.emailTextController,
                    textInputType: TextInputType.emailAddress,
                    focusNode: state.emailFocus,
                    validator: (email) {
                      if (state.isLoginFail.value) {
                        return '';
                      }
                      return checkEmail(email!);
                    },
                    fillColor: state.isLoginFail.value
                        ? AppColors.textFieldErrorFillColor
                        : null,
                    filled: state.isLoginFail.value,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: SvgPicture.asset(AppImages.phone),
                    ),
                    onFieldSubmitted: (value) {
                      if (state.formKeyEmail.currentState!.validate()) {
                        FocusScope.of(context).requestFocus(state.passFocus);
                      }
                    },
                  ),
                ),

                /// Password field
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          state.isLoginFail.value ? 0 : AppDimens.dimen16),
                  child: Form(
                    key: state.formKeyPass,
                    child: AppTextFieldWidget(
                      hintText: 'Mật khẩu*',
                      inputController: state.passwordTextController,
                      focusNode: state.passFocus,
                      obscureText: true,
                      fillColor: state.isLoginFail.value
                          ? AppColors.textFieldErrorFillColor
                          : null,
                      filled: state.isLoginFail.value,
                      validator: (value) {
                        if (state.isLoginFail.value) {
                          return '';
                        }
                        return checkPass(value!);
                      },
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: SvgPicture.asset(AppImages.lock),
                      ),
                      onFieldSubmitted: (value) {
                        if (state.formKeyPass.currentState!.validate()) {
                          _unfocusKeyBoard();
                          logic.signIn();
                        }
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppDimens.dimen4),
                      child: Text(
                        'Quên mật khẩu?',
                        style: Theme.of(context).textTheme.subtitle2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: AppDimens.dimen60, bottom: AppDimens.dimen14),
                  child: AppCommonButton(
                    textButton: 'Đăng nhập',
                    onPress: () {
                      _unfocusKeyBoard();
                      logic.signIn();
                    },
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.subtitle1,
                    children: [
                      const TextSpan(text: 'Bạn đã có tài khoản? '),
                      TextSpan(
                        text: 'Đăng ký',
                        style: const TextStyle(color: AppColors.green),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(RouteConfig.signUp);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  void _unfocusKeyBoard() {
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    Get.delete<SignInLogic>();
    super.dispose();
  }

  PreferredSizeWidget buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: SvgPicture.asset(AppImages.greenArrowLeft),
    );
  }
}
