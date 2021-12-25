import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:cati/router/route_config.dart';
import 'package:cati/ui/widgets/button/button_filled.dart';
import 'package:cati/ui/widgets/button/button_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/ui/widgets/textfields/app_text_field.dart';
import 'package:cati/utils/validator.dart';

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
    final headline4 = Theme.of(context).textTheme.headline4;
    final subtitle1 = Theme.of(context).textTheme.subtitle1;
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
                          S.of(context).welcome_app,
                          textAlign: TextAlign.center,
                          style: headline4,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Center(
                        child: Text(
                          S.of(context).welcome_app_2,
                          style: subtitle1,
                        ),
                      ),
                      const SizedBox(height: 37),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Form(
                          key: state.formKeyPhone,
                          child: AppTextFieldWidget(
                            focusNode: state.phoneFocus,
                            textInputType: TextInputType.phone,
                            inputController: state.phoneTextController,
                            hintText: S.of(context).input_phone,
                            validator: (phoneNumber) =>
                                checkPhoneNumber(phoneNumber!),
                            onFieldSubmitted: (value) {
                              if (state.formKeyPhone.currentState!.validate()) {
                                FocusScope.of(context)
                                    .requestFocus(state.passFocus);
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Form(
                          key: state.formKeyPass,
                          child: AppTextFieldWidget(
                            focusNode: state.passFocus,
                            inputController: state.passwordTextController,
                            obscureText: true,
                            hintText: S.of(context).password,
                            validator: (value) => checkPass(value!),
                            onFieldSubmitted: (value) {
                              if (state.formKeyPass.currentState!.validate()) {
                                logic.signIn();
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ButtonText(
                          voidCallback: () {},
                          title: '${S.of(context).forgot_pass} >>',
                        ),
                      ),
                      const SizedBox(height: 38),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ButtonFill(
                              voidCallback: () {
                                logic.signIn();
                              },
                              title: S.of(context).login),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteConfig.sign_up);
                          },
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: S.of(context).not_account,
                                  style: subtitle1),
                              TextSpan(
                                  text: S.of(context).register_now,
                                  style: subtitle1!
                                      .copyWith(color: AppColors.blue)),
                            ]),
                          ),
                        ),
                      ),
                      const Spacer(),
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
    Get.delete<SignInLogic>();
    super.dispose();
  }
}
