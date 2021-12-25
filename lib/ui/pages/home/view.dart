import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/ui/pages/home/widget/bds_buy_together.dart';
import 'package:cati/ui/pages/home/widget/bds_discover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'widget/appbar.dart';
import 'widget/bds_trending.dart';
import 'widget/slider_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const SliderCard(),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconBDS(S.of(context).bds_buy, AppImages.bds_buy),
                iconBDS(S.of(context).bds_sign, AppImages.bds_sign),
                iconBDS(S.of(context).bds_report, AppImages.bds_report),
                iconBDS(S.of(context).bds_manager, AppImages.bds_manager),
              ],
            ),
            divider,
            contentText(S.of(context).trending, AppImages.trending),
            const SizedBox(height: 15),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return const BdsTrending();
              },
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
            ),
            const SizedBox(height: 19),
            contentText(
                S.of(context).bds_buy_together, AppImages.bds_buy_together),
            divider,
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return const BdsBuyTogether();
              },
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) {
                return divider;
              },
            ),
            divider,
            contentText(S.of(context).discover, AppImages.discover),
            const SizedBox(height: 13),
            SizedBox(
              height: 147,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const BdsDiscover();
                },
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget iconBDS(String title, String icon) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        const SizedBox(height: 6),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        )
      ],
    ));
  }

  Padding contentText(String text, String icon) {
    final headline3 = Theme.of(context).textTheme.headline3;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(width: 12),
          Text(
            text,
            style: headline3,
          )
        ],
      ),
    );
  }

  Divider get divider {
    return const Divider(
      thickness: 1,
      endIndent: 20,
      indent: 20,
      height: 30,
    );
  }

  @override
  void dispose() {
    Get.delete<HomeLogic>();
    super.dispose();
  }
}
