import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/ui/widgets/button/app_common_button.dart';
import 'package:cati/ui/widgets/common/custom_cache_image_network.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ClassLearningProgressCard extends StatelessWidget {
  final String classImageUrl;
  final double completeLearningPercent;
  final String className;
  final String schoolName;
  final String schoolLevel;
  final String majorName;

  const ClassLearningProgressCard({
    Key? key,
    required this.classImageUrl,
    required this.completeLearningPercent,
    required this.className,
    required this.schoolName,
    required this.schoolLevel,
    required this.majorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDimens.dimen6),
      child: Column(
        children: [
          SizedBox(
            height: 122,
            width: double.infinity,
            child: CustomCacheNetworkImage(imageUrl: classImageUrl),
          ),
          Container(
            color: AppColors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.dimen8,
              vertical: AppDimens.dimen14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  className,
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppDimens.dimen8),
                Text(
                  'Trường: $schoolName',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColors.hintText,
                        fontSize: AppDimens.font10,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Phân hệ: $schoolLevel',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColors.hintText,
                        fontSize: AppDimens.font10,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Chuyên ngành: $majorName',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColors.hintText,
                        fontSize: AppDimens.font10,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LinearPercentIndicator(
                            lineHeight: 4.0,
                            animationDuration: 3000,
                            percent: completeLearningPercent / 100,
                            animateFromLastPercent: true,
                            progressColor: AppColors.green,
                            backgroundColor: AppColors.linearProgressBackground,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(height: AppDimens.dimen2),
                          Text(
                            '$completeLearningPercent % hoàn thành',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: AppColors.hintText,
                                      fontSize: AppDimens.font10,
                                    ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppDimens.dimen8),
                    AppCommonButton(
                      textButton: 'Vào lớp học',
                      onPress: () {},
                      heightButton: 24,
                      buttonTextStyle: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
