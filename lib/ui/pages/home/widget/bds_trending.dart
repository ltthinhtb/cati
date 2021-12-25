import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:flutter/material.dart';

class BdsTrending extends StatelessWidget {
  const BdsTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline2 = Theme.of(context).textTheme.headline2;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: AppColors.background2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: 'https://i.ibb.co/Cb9TKCB/Mask-Group.png',
            imageBuilder: (context, imageProvider) => Container(
              height: 74,
              width: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => Container(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
           Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Sự lên ngôi của xu hướng thiết kế căn hộ hiện đại',
                style: headline2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
