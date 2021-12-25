import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/router/route_config.dart';
import 'package:cati/ui/widgets/button/button_filled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BdsBuyTogether extends StatelessWidget {
  const BdsBuyTogether({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline3 = Theme.of(context).textTheme.headline3;
    final caption = Theme.of(context).textTheme.caption;
    return GestureDetector(
      onTap: (){
        Get.toNamed(RouteConfig.bds_detail,arguments: "thinh");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: 'https://i.ibb.co/0JBY10D/Mask-Group.png',
              imageBuilder: (context, imageProvider) => Container(
                height: 147,
                width: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              placeholder: (context, url) => Container(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(width: 12),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Eurowindow Garden City Thanh Hóa- mã căn 10119',
                  style: headline3!.copyWith(fontSize: 15),
                ),
                const SizedBox(height: 3),
                Text(
                  '18 tỷ',
                  style: headline3.copyWith(
                      fontSize: 17, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(height: 5),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(text: S.of(context).sold, style: caption),
                    TextSpan(
                      text: " 600 gói",
                      style: caption!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                    TextSpan(
                      text: " | ",
                      style:
                          caption.copyWith(color: Theme.of(context).primaryColor),
                    ),
                    TextSpan(
                      text: S.of(context).remain,
                      style: caption,
                    ),
                    TextSpan(
                      text: " 500 gói",
                      style:
                          caption.copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ],
                )),
                const SizedBox(height: 5),
                Row(
                  children: [
                    SvgPicture.asset(AppImages.location),
                    const SizedBox(width: 5),
                    Text(
                      'Hai Bà Trưng, Hà Nội ',
                      style: caption,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 23,
                    child: ButtonFill(
                      title: S.of(context).invest,
                      voidCallback: () {},
                      type: ButtonEnums.invest,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
