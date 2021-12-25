import 'package:cati/common/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final VoidCallback voidCallback;
  final String title;
  final TextStyle? textStyle;

  const ButtonText(
      {Key? key,
      required this.voidCallback,
      required this.title,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Text(
        title,
        style: textStyle ??
            Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColors.blue,
                fontWeight: FontWeight.w400),
      ),
    );
  }
}
