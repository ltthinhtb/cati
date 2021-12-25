import 'package:flutter/cupertino.dart';
import 'package:cati/common/app_images.dart';
import 'package:cati/generated/l10n.dart';

enum MainTab {
  home,
  chat,
  history,
  profile,
}

extension MainTabExtension on MainTab {
  String label(BuildContext context) {
    switch (this) {
      case MainTab.home:
        return S.of(context).home;
      case MainTab.chat:
        return S.of(context).message;
      case MainTab.history:
        return S.of(context).history;
      case MainTab.profile:
        return S.of(context).user;
    }
  }

  String get icon {
    switch (this) {
      case MainTab.home:
        return AppImages.home;
      case MainTab.history:
        return AppImages.clock;
      case MainTab.profile:
        return AppImages.user;
      case MainTab.chat:
        return AppImages.chat;
    }
  }
}
