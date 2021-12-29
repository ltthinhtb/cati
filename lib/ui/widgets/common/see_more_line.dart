import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:flutter/material.dart';

class SeeMoreLine extends StatelessWidget {
  const SeeMoreLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            width: double.infinity,
            color: AppColors.blurGreen,
            margin: const EdgeInsets.only(
                right: AppDimens.dimen4, top: AppDimens.dimen4),
          ),
        ),
        Text(
          'Xem thêm',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: AppColors.blurGreen),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Expanded(
          child: Container(
            height: 1,
            width: double.infinity,
            color: AppColors.blurGreen,
            margin: const EdgeInsets.only(
                left: AppDimens.dimen4, top: AppDimens.dimen4),
          ),
        ),
      ],
    );
  }
}
