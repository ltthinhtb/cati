import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonFill extends StatelessWidget {
  final VoidCallback? voidCallback;
  final String title;
  final ButtonEnums? type;

  const ButtonFill(
      {Key? key,
      required this.voidCallback,
      required this.title,
      this.type = ButtonEnums.fill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: voidCallback,
      style: type!.type(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
              visible: type == ButtonEnums.invest,
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SvgPicture.asset(AppImages.invest),
              )),
          Text(title),
        ],
      ),
    );
  }
}

enum ButtonEnums { fill, invest , package }

extension ButtonTypeExt on ButtonEnums {

  ButtonStyle? type(BuildContext context) {
    switch (this) {
      case ButtonEnums.fill:
        return null;
      case ButtonEnums.invest:
        return ElevatedButton.styleFrom(
          primary: AppColors.buttonBlue,
          onPrimary: AppColors.white,
          textStyle: Theme.of(context).textTheme.caption,
        );
      case ButtonEnums.package:
        return ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)
          )),
          primary: AppColors.primary,
          onPrimary: AppColors.white,
          textStyle: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 18),
        );
    }
  }
}
