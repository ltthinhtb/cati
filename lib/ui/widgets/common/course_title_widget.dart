import 'package:cati/common/app_dimens.dart';
import 'package:cati/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseTitleWidget extends StatelessWidget {
  final Color penColor;
  final String title;
  final Color? titleColor;
  final Widget leadingIcon;

  const CourseTitleWidget({
    Key? key,
    required this.penColor,
    required this.title,
    required this.leadingIcon,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        leadingIcon,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.dimen4,
          ),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: titleColor, height: 0.8),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: SvgPicture.asset(
            AppImages.dotLine,
            color: penColor,
            height: 3,
            width: double.infinity,
          ),
        ),
        SvgPicture.asset(
          AppImages.pen,
          color: penColor,
        ),
      ],
    );
  }
}
