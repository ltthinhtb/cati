import 'package:flutter/cupertino.dart';

class SignUpState {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final formKeyFullName = GlobalKey<FormState>();
  final formKeyPhone = GlobalKey<FormState>();
  final formKeyEmail = GlobalKey<FormState>();
  final formKeyPass = GlobalKey<FormState>();

  final FocusNode fullNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode passFocus = FocusNode();

  SignUpState() {
    ///Initialize variables
  }
}
