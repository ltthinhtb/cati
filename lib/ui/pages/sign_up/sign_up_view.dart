import 'package:cati/utils/validator.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<SignUpLogic>();
    super.dispose();
  }
}
