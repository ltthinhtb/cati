import 'package:cati/common/app_colors.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/ui/widgets/textfields/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Align(
        alignment: Alignment.centerRight,
        child: Image.asset(
          AppImages.home,
          height: 30,
          width: 30,
        ),
      ),
      leadingWidth: 50,
      actions: [
        SvgPicture.asset(AppImages.bell),
        const SizedBox(
          width: 20,
        )
      ],
      title: AppTextFieldWidget(
        padding: const EdgeInsets.symmetric(vertical: 9),
        filled: true,
        fillColor: AppColors.background2,
        hintText: S.of(context).search_real_estate,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 12, right: 6),
          child: SvgPicture.asset(AppImages.search),
        ),
      ),
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
