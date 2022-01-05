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
  final TextStyle? buttonTextStyle;
  final BorderSide? borderSide;
  final Widget? leadingIcon;

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
    this.borderSide,
    this.buttonTextStyle,
    this.leadingIcon,
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
          borderSide: borderSide ?? BorderSide.none,
        ),
        splashColor: splashColor,
        onPressed: onPress,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leadingIcon ?? const SizedBox(),
              Text(
                textButton,
                style: buttonTextStyle ??
                    Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
