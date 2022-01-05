import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/common/app_images.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(top: AppDimens.dimen60),
        margin: const EdgeInsets.symmetric(horizontal: AppDimens.dimen24),
        child: Column(
          children: [
            Image.asset(
              AppImages.verticalLogoText,
              height: 130,
            ),
            Text(
              'Chào mừng đến với Catiedu',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
            const SizedBox(height: AppDimens.dimen60),
            Form(
              key: state.formKeyEmail,
              child: AppTextFieldWidget(
                hintText: 'Email',
                inputController: state.emailTextController,
                textInputType: TextInputType.emailAddress,
                focusNode: state.emailFocus,
                validator: (email) => checkEmail(email!),
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
            const SizedBox(height: AppDimens.dimen16),
            Form(
              key: state.formKeyPass,
              child: AppTextFieldWidget(
                hintText: 'Mật khẩu*',
                inputController: state.passwordTextController,
                focusNode: state.passFocus,
                obscureText: true,
                validator: (value) => checkPass(value!),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: SvgPicture.asset(AppImages.lock),
                ),
                onFieldSubmitted: (value) {
                  if (state.formKeyPass.currentState!.validate()) {
                    logic.signIn();
                  }
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Quên mật khẩu?',
                  style: Theme.of(context).textTheme.subtitle2,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: AppDimens.dimen60),
            AppCommonButton(
              textButton: 'Đăng nhập',
              onPress: () {
                logic.signIn();
              },
            ),
            const SizedBox(height: AppDimens.dimen14),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.subtitle1,
                children: [
                  const TextSpan(text: 'Bạn đã có tài khoản? '),
                  TextSpan(
                    text: 'Đăng ký',
                    style: const TextStyle(color: AppColors.green),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
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
