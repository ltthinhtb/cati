import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/ui/widgets/button/app_common_button.dart';
import 'package:cati/ui/widgets/common/custom_cache_image_network.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CourseLearningProgressCard extends StatelessWidget {
  final String courseImageUrl;
  final int lessonNumber;
  final int completeLearningPercent;
  final String courseName;

  const CourseLearningProgressCard({
    Key? key,
    required this.courseImageUrl,
    required this.lessonNumber,
    required this.completeLearningPercent,
    required this.courseName,
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
            child: CustomCacheNetworkImage(imageUrl: courseImageUrl),
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
                  courseName,
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppDimens.dimen14),
                LinearPercentIndicator(
                  lineHeight: 4.0,
                  animationDuration: 3000,
                  percent: completeLearningPercent / 100,
                  animateFromLastPercent: true,
                  progressColor: AppColors.green,
                  backgroundColor: AppColors.linearProgressBackground,
                  padding: EdgeInsets.zero,
                ),
                const SizedBox(height: AppDimens.dimen4),
                Text(
                  '$completeLearningPercent % hoàn thành',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColors.hintText,
                        fontSize: AppDimens.font10,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppDimens.dimen14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$lessonNumber Bài',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.green),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AppCommonButton(
                      widthButton: 66,
                      textButton: 'Học ngay',
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
