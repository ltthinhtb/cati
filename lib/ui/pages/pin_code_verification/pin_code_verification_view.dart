import 'dart:async';
import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/ui/widgets/common/class_learning_progress_card.dart';
import 'package:cati/ui/widgets/common/comment_card.dart';
import 'package:cati/ui/widgets/common/course_date_card.dart';
import 'package:cati/ui/widgets/common/course_learning_progress_card.dart';
import 'package:cati/ui/widgets/common/course_title_widget.dart';
import 'package:cati/ui/widgets/common/entertainment_news_card.dart';
import 'package:cati/ui/widgets/common/image_arrow_right_card.dart';
import 'package:cati/ui/widgets/common/see_more_line.dart';
import 'package:cati/ui/widgets/common/teacher_info_card.dart';
import 'package:cati/ui/widgets/common/video_course_card.dart';
import 'package:cati/ui/widgets/textfields/app_text_field.dart';
import 'package:cati/ui/widgets/textfields/search_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationView extends StatefulWidget {
  const PinCodeVerificationView({Key? key}) : super(key: key);

  @override
  _PinCodeVerificationViewState createState() =>
      _PinCodeVerificationViewState();
}

class _PinCodeVerificationViewState extends State<PinCodeVerificationView> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();
    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  AppImages.verticalLogoText,
                  height: 140,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Ki???m tra tin nh???n ??i???n tho???i\nc???a b???n',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 32),
                  child: Text(
                    'Ch??ng t??i ???? g???i m?? ?????n ??i???n tho???i c???a b???n',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Theme(
                  data: ThemeData(),
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 40,
                      ),
                      child: PinCodeTextField(
                        appContext: context,
                        length: 6,
                        obscureText: false,
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 3) {
                            return "Validate d??? li???u here";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(15),
                          fieldHeight: 71,
                          fieldWidth: 51,
                          borderWidth: 1,
                          errorBorderColor: Colors.red,
                          inactiveColor: Colors.grey,
                          inactiveFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          selectedColor: Colors.green,
                          activeColor: Colors.green,
                          activeFillColor: Colors.white,
                          fieldOuterPadding:
                              const EdgeInsets.symmetric(horizontal: 2),
                        ),
                        cursorColor: Colors.transparent,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        keyboardType: TextInputType.number,
                        backgroundColor: Colors.transparent,
                        boxShadows: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                        onCompleted: (v) {
                          formKey.currentState!.validate();
                          // conditions for validating
                          if (currentText.length != 6 ||
                              currentText != "123456") {
                            errorController!.add(ErrorAnimationType
                                .shake); // Triggering error shake animation
                            setState(() => hasError = true);
                          } else {
                            setState(
                              () {
                                hasError = false;
                                snackBar("OTP Verified!!");
                              },
                            );
                          }
                        },
                        onChanged: (value) {
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          return true;
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    hasError ? "Hi???n th??? l???i khi nh???p sai otp" : "",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: AppColors.red),
                  ),
                ),
                TextButton(
                  onPressed: () => snackBar("OTP resend!!"),
                  child: Text(
                    "G???i l???i m??",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(decoration: TextDecoration.underline),
                  ),
                ),
                const AppTextFieldWidget(
                  hintText: 'So dien thoai',
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Icon(Icons.phone, color: AppColors.hintText),
                  ),
                ),
                Container(
                  height: 1500,
                  margin: const EdgeInsets.only(top: 20),
                  color: AppColors.green.withOpacity(.2),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      SearchTextField(
                        hintText: 'T??m ki???m',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 14, right: 12),
                          child: SvgPicture.asset(AppImages.search),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: VideoCourseCard(
                              courseName: 'T??n kh??a h???c m???i.....',
                              courseNumber: 50,
                              courseImage: imageUrl,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: VideoCourseCard(
                              courseName: 'T??n kh??a h???c m???i.....',
                              courseNumber: 50,
                              courseImage: imageUrl,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: TeacherInfoCard(
                              position: 'Trung c???p - Cao ?????ng',
                              workingAddress: 'Catiedu',
                              teacherName: 'C??: Nguy???n Thu Tr?? ',
                              teacherImage: imageUrl,
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: TeacherInfoCard(
                              position: 'Trung c???p - Cao ?????ng',
                              workingAddress: 'Catiedu',
                              teacherName: 'C??: Nguy???n Thu Tr??',
                              teacherImage: imageUrl,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: CourseDateCard(
                              courseName:
                                  'Ki???m ?????nh an to??n k??? thu???t thi???t b??? Uy t??n...',
                              dateTime: DateTime.now(),
                              courseImage: imageUrl,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: CourseDateCard(
                              courseName:
                                  'Ki???m ?????nh an to??n k??? thu???t thi???t b??? Uy t??n...',
                              dateTime: DateTime.now(),
                              courseImage: imageUrl,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CommentCard(
                        avatarUrl: imageUrl,
                        commenterName: 'H????ng Nguy???n',
                        content:
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonumm',
                      ),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          Expanded(
                            child: CourseLearningProgressCard(
                              courseName:
                                  'M?? h??nh MVC v?? ???ng d???ng thi???t k??? web...',
                              completeLearningPercent: 5,
                              lessonNumber: 50,
                              courseImageUrl: imageUrl,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: CourseLearningProgressCard(
                              courseName:
                                  'M?? h??nh MVC v?? ???ng d???ng thi???t k??? web...',
                              completeLearningPercent: 5,
                              lessonNumber: 50,
                              courseImageUrl: imageUrl,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          Expanded(
                            child: ClassLearningProgressCard(
                              className: 'L???P: K01-SK??D',
                              schoolName: 'Tr?????ng Trung C???p V??n H??a Du L???ch',
                              schoolLevel: 'TRUNG C???P CH??NH QUY',
                              majorName: '??i???u d?????ng',
                              completeLearningPercent: 5,
                              classImageUrl: imageUrl,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: ClassLearningProgressCard(
                              className: 'L???P: K01-SK??D',
                              schoolName: 'Tr?????ng Trung C???p V??n H??a Du L???ch',
                              schoolLevel: 'TRUNG C???P CH??NH QUY',
                              majorName: '??i???u d?????ng',
                              completeLearningPercent: 5,
                              classImageUrl: imageUrl,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                EntertainmentNewsCard(
                  dateTime: DateTime.now(),
                  title: 'H?????ng nghi???p',
                  description: '10 b?? quy???t khi l??m b??i tr???c nghi???m ph???i nh???',
                  imageUrl: imageUrl,
                ),
                const SeeMoreLine(),
                const SizedBox(height: 50),
                CourseTitleWidget(
                  title: 'DU H???C',
                  leadingIcon: SvgPicture.asset(
                    AppImages.whiteHat,
                    color: AppColors.green,
                  ),
                  penColor: AppColors.grey,
                ),
                const SizedBox(height: 50),
                ImageArrowRightCard(imageUrl: imageUrl),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String imageUrl =
    'https://phantom-marca.unidadeditorial.es/f05288ebbb00fcefb86713d0b435c7fb/resize/1320/f/jpg/assets/multimedia/imagenes/2021/12/10/16391545485537.jpg';
