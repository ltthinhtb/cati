import 'package:flutter/cupertino.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';

enum MainTab {
  home,
  technic,
  course,
  test,
  account,
}

extension MainTabExtension on MainTab {
  String label(BuildContext context) {
    switch (this) {
      case MainTab.home:
        return S.of(context).home;
      case MainTab.technic:
        return S.of(context).message;
      case MainTab.course:
        return S.of(context).history;
      case MainTab.test:
        return S.of(context).user;
      case MainTab.account:
        return S.of(context).user;
    }
  }

  String get icon {
    switch (this) {
      case MainTab.home:
        return AppImages.home;
      case MainTab.technic:
        return AppImages.bachelorsHat;
      case MainTab.course:
        return AppImages.course;
      case MainTab.test:
        return AppImages.openBook;
      case MainTab.account:
        return AppImages.account;
    }
  }
}
