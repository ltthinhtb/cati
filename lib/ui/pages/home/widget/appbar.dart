import 'package:cati/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Align(
        alignment: Alignment.centerRight,
        child: SvgPicture.asset(
          AppImages.home,
          height: 30,
          width: 30,
        ),
      ),
      leadingWidth: 50,
      actions: [
        SvgPicture.asset(AppImages.home),
        const SizedBox(
          width: 20,
        )
      ],
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
