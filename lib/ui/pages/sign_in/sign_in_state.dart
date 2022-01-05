import 'package:flutter/material.dart';

class SignInState {
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  final formKeyEmail = GlobalKey<FormState>();
  final formKeyPass = GlobalKey<FormState>();

  final FocusNode emailFocus = FocusNode();
  final FocusNode passFocus = FocusNode();

  SignInState() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }
}
