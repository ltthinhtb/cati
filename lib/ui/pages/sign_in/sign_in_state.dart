import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInState {
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  final formKeyEmail = GlobalKey<FormState>();
  final formKeyPass = GlobalKey<FormState>();

  final FocusNode emailFocus = FocusNode();
  final FocusNode passFocus = FocusNode();

  late RxBool isLoginFail;

  SignInState() {
    isLoginFail = false.obs;
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }
}
