import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:flutter/material.dart';

class BdsDiscover extends StatelessWidget {
  const BdsDiscover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline2 = Theme.of(context).textTheme.headline2;
    final caption = Theme.of(context).textTheme.caption;
    return SizedBox(
      height: 176,
      width: 128,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: 'https://i.ibb.co/XFH7ryY/Rectangle-1365.png',
            imageBuilder: (context, imageProvider) => Container(
              height: 176,
              width: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => Container(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Hà nội',
                    style: headline2!.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Xem ngay 208 Dự án',
                    style: caption!.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
