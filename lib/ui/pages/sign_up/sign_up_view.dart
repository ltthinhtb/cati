import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/ui/widgets/button/app_common_button.dart';
import 'package:cati/ui/widgets/textfields/app_text_field.dart';
import 'package:cati/utils/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sign_up_logic.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with Validator {
  final logic = Get.put(SignUpLogic());
  final state = Get.find<SignUpLogic>().state;
  bool policyCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: 58,
              left: 18,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 22,
                  color: Colors.green,
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.verticalLogoText,
                      height: 140,
                    ),
                    const Text('Tạo tài khoản mới'),

                    ///form Họ và tên
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 8),
                      child: AppTextFieldWidget(
                        inputController: state.fullNameController,
                        labelText: 'Họ và Tên',
                        hintText: 'Họ và Tên',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 17, right: 15),
                          child: Icon(
                            Icons.person_outline,
                            color: AppColors.border,
                          ),
                        ),
                      ),
                    ),

                    ///form số điện thoại
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 8),
                      child: AppTextFieldWidget(
                        inputController: state.phoneController,
                        labelText: '',
                        hintText: 'Số điện thoại',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 17, right: 15),
                          child: Icon(
                            Icons.phone_outlined,
                            color: AppColors.border,
                          ),
                        ),
                      ),
                    ),

                    ///form mật khẩu
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
                      child: AppTextFieldWidget(
                        inputController: state.passController,
                        labelText: '',
                        hintText: 'Mật khẩu',
                        obscureText: true,
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 17, right: 15),
                          child: Icon(
                            Icons.lock_outline_sharp,
                            color: AppColors.border,
                          ),
                        ),
                      ),
                    ),

                    ///form nhập lại mật khẩu
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 8),
                      child: AppTextFieldWidget(
                        inputController: state.passController,
                        labelText: '',
                        hintText: 'Nhập lại mật khẩu',
                        obscureText: true,
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 17, right: 15),
                          child: Icon(
                            Icons.lock_outline_sharp,
                            color: AppColors.border,
                          ),
                        ),
                      ),
                    ),

                    ///Đồng ý điều khoản
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                  width: 1.0, color: Colors.grey),
                            ),
                            value: policyCheck,
                            onChanged: (value) {
                              setState(() {
                                policyCheck = value ?? true;
                              });
                            },
                            activeColor: AppColors.white,
                            checkColor: AppColors.green,
                          ),
                          const Text('Tôi đồng ý với điều khoản và điều kiện'),
                        ],
                      ),
                    ),

                    ///Button đăng ký
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 8),
                      child: AppCommonButton(
                        textButton: 'Đăng Ký',
                        onPress: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                            text: 'Bạn đã có tài khoản?',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                          text: 'Đăng nhập',
                          style: const TextStyle(color: AppColors.green),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.back(),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<SignUpLogic>();
    super.dispose();
  }
}
