import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:cati/ui/widgets/loading_widget/circle_progress_widget.dart';
import 'package:flutter/material.dart';

class CustomCacheNetworkImage extends StatelessWidget {
  const CustomCacheNetworkImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) => Center(child: loadWidget()),
      errorWidget: (context, url, error) => const Center(
        child: Icon(
          Icons.error_outlined,
          color: AppColors.red,
        ),
      ),
    );
  }
}
