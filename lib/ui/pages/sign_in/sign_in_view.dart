import 'package:cati/ui/pages/pin_code_verification/pin_code_verification_view.dart';
import 'package:cati/utils/validator.dart';
import 'package:flutter/material.dart';
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const PinCodeVerificationView(),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<SignInLogic>();
    super.dispose();
  }
}
