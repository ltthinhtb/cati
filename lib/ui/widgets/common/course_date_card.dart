import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_cache_image_network.dart';

class CourseDateCard extends StatelessWidget {
  final String courseImage;
  final String courseName;
  final DateTime dateTime;

  const CourseDateCard({
    Key? key,
    required this.courseImage,
    required this.courseName,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDimens.dimen10),
      child: Column(
        children: [
          Container(
            height: 108,
            width: double.infinity,
            color: AppColors.white,
            child: CustomCacheNetworkImage(imageUrl: courseImage),
          ),
          Container(
            height: 84,
            width: double.infinity,
            color: AppColors.white,
            padding: const EdgeInsets.all(AppDimens.dimen8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseName,
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppImages.calendar),
                    const SizedBox(width: AppDimens.dimen4),
                    Text(
                      '${dateTime.day}/${dateTime.month}/${dateTime.year}',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.hintText),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
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
