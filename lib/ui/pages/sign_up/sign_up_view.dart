import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/ui/widgets/button/button_filled.dart';
import 'package:cati/ui/widgets/textfields/app_text_field.dart';
import 'package:cati/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sign_up_logic.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with Validator {
  final logic = Get.put(SignUpLogic());
  final state = Get.find<SignUpLogic>().state;

  @override
  Widget build(BuildContext context) {
    final headline4 = Theme.of(context).textTheme.headline4;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.background),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 56,
                    ),
                    Center(
                      child: SizedBox(
                        height: 124,
                        child: CachedNetworkImage(
                          imageUrl: AppImages.logoUrl,
                          imageBuilder: (context, imageProvider) => Container(
                            height: 124,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: imageProvider),
                            ),
                          ),
                          placeholder: (context, url) => Container(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(43),
                          topLeft: Radius.circular(43))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          S.of(context).create_account,
                          style: headline4,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Form(
                          key: state.formKeyFullName,
                          child: AppTextFieldWidget(
                            focusNode: state.fullNameFocus,
                            label: S.of(context).full_name,
                            inputController: state.fullNameController,
                            validator: (value) => checkFullName(value!),
                            onFieldSubmitted: (value) {
                              if (state.formKeyFullName.currentState!
                                  .validate()) {
                                FocusScope.of(context)
                                    .requestFocus(state.phoneFocus);
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Form(
                          key: state.formKeyPhone,
                          child: AppTextFieldWidget(
                            focusNode: state.phoneFocus,
                            label: S.of(context).input_your_phone,
                            textInputType: TextInputType.number,
                            inputController: state.phoneController,
                            validator: (phoneNumber) =>
                                checkPhoneNumber(phoneNumber!),
                            onFieldSubmitted: (value) {
                              if (state.formKeyPhone.currentState!.validate()) {
                                FocusScope.of(context)
                                    .requestFocus(state.emailFocus);
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Form(
                          key: state.formKeyEmail,
                          child: AppTextFieldWidget(
                            focusNode: state.emailFocus,
                            label: S.of(context).input_your_email,
                            inputController: state.emailController,
                            validator: (email) => checkEmail(email!),
                            onFieldSubmitted: (value) {
                              if (state.formKeyEmail.currentState!.validate()) {
                                FocusScope.of(context)
                                    .requestFocus(state.passFocus);
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Form(
                          key: state.formKeyPass,
                          child: AppTextFieldWidget(
                            focusNode: state.passFocus,
                            obscureText: true,
                            label: S.of(context).password,
                            inputController: state.passController,
                            validator: (pass) => checkPass(pass!),
                            onFieldSubmitted: (value) {
                              if (state.formKeyPass.currentState!.validate()) {
                                logic.signUp();
                              }
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ButtonFill(voidCallback: (){
                              logic.signUp();
                            }, title: S.of(context).sign_up)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )
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
