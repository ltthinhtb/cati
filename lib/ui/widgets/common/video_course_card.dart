import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/ui/widgets/loading_widget/circle_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoCourseCard extends StatelessWidget {
  final String courseImage;
  final String courseName;
  final int courseNumber;

  const VideoCourseCard({
    Key? key,
    required this.courseImage,
    required this.courseName,
    this.courseNumber = 0,
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
            child: CachedNetworkImage(
              imageUrl: courseImage,
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(child: loadWidget()),
              errorWidget: (context, url, error) => const Center(
                child: Icon(
                  Icons.error_outlined,
                  color: AppColors.red,
                ),
              ),
            ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$courseNumber Bài',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.green),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SvgPicture.asset(AppImages.videoPlay)
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
