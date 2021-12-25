import 'package:flutter/material.dart';

class SignInState {
  late TextEditingController phoneTextController;
  late TextEditingController passwordTextController;

  final formKeyPhone = GlobalKey<FormState>();
  final formKeyPass = GlobalKey<FormState>();

  final FocusNode phoneFocus = FocusNode();
  final FocusNode passFocus = FocusNode();

  SignInState() {
    phoneTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }
}
