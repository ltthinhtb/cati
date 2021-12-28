import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/ui/widgets/loading_widget/circle_progress_widget.dart';
import 'package:flutter/material.dart';

class TeacherInfoCard extends StatelessWidget {
  final String teacherImage;
  final String teacherName;
  final String workingAddress;
  final String position;

  const TeacherInfoCard({
    Key? key,
    required this.teacherImage,
    required this.teacherName,
    required this.workingAddress,
    required this.position,
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
              imageUrl: teacherImage,
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
                  teacherName,
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Giảng viên: $workingAddress',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: AppColors.hintText),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Phụ trách: $position',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: AppColors.hintText),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
