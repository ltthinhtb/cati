import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/ui/widgets/button/button_filled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'bds_detail_logic.dart';
import 'widget/content_tab.dart';

class BdsDetailPage extends StatefulWidget {
  @override
  State<BdsDetailPage> createState() => _BdsDetailPageState();
}

class _BdsDetailPageState extends State<BdsDetailPage> {
  final logic = Get.put(BdsDetailLogic());
  final state = Get.find<BdsDetailLogic>().state;

  final listTab = [
    'Tổng quan',
    'Chủ đầu tư',
    'Tiến độ',
    'Chính sách ngân hàng'
  ];

  @override
  Widget build(BuildContext context) {
    final headline6 = Theme.of(context).textTheme.headline6;
    final headline5 = Theme.of(context).textTheme.headline5;
    final caption = Theme.of(context).textTheme.caption;
    final bodyText1 = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: CachedNetworkImage(
                imageUrl: 'https://i.ibb.co/1ZYNrv2/Mask-Group.png',
                imageBuilder: (context, imageProvider) => Container(
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
                placeholder: (context, url) => Container(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Divider(
              height: 0,
              thickness: 2,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'SM 999 Vinhomes Ocean Park cao cấp - Mã căn STS-10-10',
                style: headline6,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '15 Tỷ',
                style: headline5!.copyWith(
                    color: Theme.of(context).primaryColor, fontSize: 28),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.borderContainer, width: 1),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5))),
              child: Row(
                children: [
                  columnData(
                      'Thời gian đầu tư', AppImages.clock_icon, "24 Tháng"),
                  const SizedBox(
                      height: 74,
                      child: VerticalDivider(
                        color: AppColors.borderContainer,
                        thickness: 1,
                      )),
                  columnData('Lợi nhuận kỳ vọng', AppImages.increase_circle,
                      "+ 20.0%/năm")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: ButtonFill(
                    title: '1,000,000/gói',
                    type: ButtonEnums.package,
                    voidCallback: () {},
                  )),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    '${S.of(context).sold}: ',
                    style: bodyText1!.copyWith(color: AppColors.text_black_1),
                  ),
                  Text(
                    '600 Gói',
                    style: bodyText1.copyWith(color: AppColors.text_black_1),
                  ),
                  const Spacer(),
                  Text(
                    '${S.of(context).remain}: ',
                    style: bodyText1.copyWith(color: AppColors.text_black_1),
                  ),
                  Text(
                    '11,393',
                    style: bodyText1.copyWith(
                        color: AppColors.text_black_1,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const LinearProgressIndicator(
                    minHeight: 9,
                    value: 0.3,
                    backgroundColor: AppColors.dividerProgress,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(AppColors.buttonBlue),
                  )),
            ),
            const SizedBox(height: 27),
            Center(
              child: ButtonFill(
                voidCallback: () {},
                title: S.of(context).invest,
                type: ButtonEnums.invest,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppImages.location,
                    height: 16,
                    width: 16,
                    color: AppColors.buttonBlue,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Đa Tốn, Huyện Gia Lâm, Hà Nội',
                    style: bodyText1.copyWith(
                        color: AppColors.buttonBlue, fontSize: 13),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(child: rowIcon(AppImages.bed, '2 - 5 Ngủ')),
                  Expanded(child: rowIcon(AppImages.wc, '2 - 5 WC')),
                  Expanded(child: rowIcon(AppImages.area, '120 m2'))
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 21,
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      height: 21,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: AppColors.dividerProgress,
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        'Độc quyền',
                        style: caption!.copyWith(fontSize: 11),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 8);
                  },
                  itemCount: 3),
            ),
            const SizedBox(height: 27),
            const Divider(
              height: 0,
              color: AppColors.maxDivider,
              thickness: 6,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 34,
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      height: 34,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          color: index == 0
                              ? Theme.of(context).primaryColor
                              : AppColors.dividerProgress,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        listTab[index],
                        style: caption!.copyWith(
                            fontSize: 13,
                            color: index == 0
                                ? AppColors.white
                                : AppColors.text_black),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 8);
                  },
                  itemCount: listTab.length),
            ),
            const SizedBox(height: 15),
            const ContentTab(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.background2,
                    onPrimary: Theme.of(context).primaryColor
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SvgPicture.asset(AppImages.document),
                      ),
                      const Text("Tải tài liệu"),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Divider(
              height: 0,
              thickness: 1,
              endIndent: 20,
              indent: 20,
              color: AppColors.dashLine,
            ),
            const SizedBox(height: 15),

          ],
        ),
      ),
    );
  }

  Widget rowIcon(String icon, String title) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 8),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 13, color: AppColors.text_black_1),
        )
      ],
    );
  }

  Widget columnData(String title, String icon, String subtitle) {
    final headline3 =
        Theme.of(context).textTheme.headline3!.copyWith(height: 1);
    final bodyText1 = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(height: 1, fontSize: 16);
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: bodyText1.copyWith(color: AppColors.text_black_1),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 8),
              Text(
                subtitle,
                style: headline3.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.buttonBlue),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
