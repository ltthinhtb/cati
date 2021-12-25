import 'package:cached_network_image/cached_network_image.dart';
import 'package:cati/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_logic.dart';
import 'splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashLogic logic = Get.put(SplashLogic());
  final SplashState state = Get.find<SplashLogic>().state;

  @override
  void initState() {
    super.initState();
    logic.checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: CachedNetworkImage(
            imageUrl: AppImages.logoUrl,
            imageBuilder: (context, imageProvider) => Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider),
              ),
            ),
            placeholder: (context, url) => Container(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<SplashLogic>();
    super.dispose();
  }
}
