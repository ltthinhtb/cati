import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_dimens.dart';
import 'package:cati/ui/widgets/common/custom_cache_image_network.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String commenterName;
  final String content;
  final String avatarUrl;

  const CommentCard({
    Key? key,
    required this.commenterName,
    required this.content,
    required this.avatarUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: SizedBox(
              height: 36,
              width: 36,
              child: CustomCacheNetworkImage(imageUrl: avatarUrl),
            ),
          ),
          const SizedBox(width: AppDimens.dimen8),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppDimens.dimen16),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.dimen10, vertical: AppDimens.dimen6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          commenterName,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: AppColors.green),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          content,
                          style: Theme.of(context).textTheme.caption,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Thích',
                          style: Theme.of(context).textTheme.caption,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: AppDimens.dimen8),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Trả lời',
                          style: Theme.of(context).textTheme.caption,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
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
