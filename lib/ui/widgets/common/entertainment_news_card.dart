import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_cache_image_network.dart';

class EntertainmentNewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final DateTime dateTime;

  const EntertainmentNewsCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: AppColors.white,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimens.dimen4),
              child: CustomCacheNetworkImage(
                imageUrl: imageUrl,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: AppDimens.dimen16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 15,
                          color: AppColors.textBlack2,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: AppColors.textBlack2),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.solidCalendar),
                      const SizedBox(width: AppDimens.dimen4),
                      Text(
                        '${dateTime.day}/${dateTime.month}/${dateTime.year}',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: AppColors.textBlack2),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
