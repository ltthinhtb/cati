import 'package:cati/common/app_dimens.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/ui/widgets/common/custom_cache_image_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageArrowRightCard extends StatelessWidget {
  final String imageUrl;

  const ImageArrowRightCard({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDimens.dimen14),
      child: SizedBox(
        height: 156,
        width: double.infinity,
        child: Stack(
          children: [
            CustomCacheNetworkImage(imageUrl: imageUrl),
            Positioned(
              top: 0,
              bottom: 0,
              right: AppDimens.dimen22,
              child: SvgPicture.asset(AppImages.circleArrowRight),
            )
          ],
        ),
      ),
    );
  }
}
