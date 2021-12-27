import 'package:cati/common/app_text_styles.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/ui/widgets/button/button_text.dart';
import 'package:get/get.dart';

import 'app_loading.dart';

class AppDiaLog {
  static Future<void> showNoticeDialog(
      {String? title, String? middleText}) async {
    AppLoading.disMissLoading();
    await Get.defaultDialog(
        title: title ?? S.current.notice,
        middleText: middleText ?? " ",
        titleStyle: AppTextStyle.h3.copyWith(fontSize: 18),
        middleTextStyle: AppTextStyle.bodyText1,
        barrierDismissible: false,
        confirm: ButtonText(
          title: "OK",
          voidCallback: () {
            Get.back();
          },
        ));
  }
}
