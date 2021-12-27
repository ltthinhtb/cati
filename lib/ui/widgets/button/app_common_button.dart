import 'package:cati/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCommonButton extends StatelessWidget {
  final Color backgroundColor;
  final Color splashColor;
  final String textButton;
  final double? heightButton;
  final double? widthButton;
  final VoidCallback onPress;
  final double buttonRadius;

  const AppCommonButton({
    Key? key,
    Color? borderColor,
    Color? backgroundColor,
    Color? splashColor,
    this.widthButton,
    required this.textButton,
    required this.onPress,
    double? heightButton,
    double? buttonRadius,
  })  : backgroundColor = backgroundColor ?? AppColors.green,
        splashColor = splashColor ?? AppColors.white,
        heightButton = heightButton ?? 58,
        buttonRadius = buttonRadius ?? 40,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton,
      width: widthButton,
      child: RawMaterialButton(
        fillColor: backgroundColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(buttonRadius),
          borderSide: BorderSide.none,
        ),
        splashColor: splashColor,
        onPressed: onPress,
        child: Center(
          child: Text(
            textButton,
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(fontSize: 18, color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
