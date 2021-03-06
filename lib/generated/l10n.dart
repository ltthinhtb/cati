// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Settings`
  String get settings_title {
    return Intl.message(
      'Settings',
      name: 'settings_title',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settings_themeMode {
    return Intl.message(
      'Theme',
      name: 'settings_themeMode',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get settings_themeModeSystem {
    return Intl.message(
      'System',
      name: 'settings_themeModeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get settings_themeModeLight {
    return Intl.message(
      'Light',
      name: 'settings_themeModeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get settings_themeModeDark {
    return Intl.message(
      'Dark',
      name: 'settings_themeModeDark',
      desc: '',
      args: [],
    );
  }

  /// `Ti???ng vi???t`
  String get settings_languageVietnamese {
    return Intl.message(
      'Ti???ng vi???t',
      name: 'settings_languageVietnamese',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get settings_languageEnglish {
    return Intl.message(
      'English',
      name: 'settings_languageEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settings_language {
    return Intl.message(
      'Language',
      name: 'settings_language',
      desc: '',
      args: [],
    );
  }

  /// `Ch??o m???ng b???n ?????n v???i\nCTV-HOLDINGS`
  String get welcome_app {
    return Intl.message(
      'Ch??o m???ng b???n ?????n v???i\nCTV-HOLDINGS',
      name: 'welcome_app',
      desc: '',
      args: [],
    );
  }

  /// `????ng nh???p ????? c?? tr???i nghi???m t???t nh???t`
  String get welcome_app_2 {
    return Intl.message(
      '????ng nh???p ????? c?? tr???i nghi???m t???t nh???t',
      name: 'welcome_app_2',
      desc: '',
      args: [],
    );
  }

  /// `Nh???p s??? ??i???n tho???i`
  String get input_phone {
    return Intl.message(
      'Nh???p s??? ??i???n tho???i',
      name: 'input_phone',
      desc: '',
      args: [],
    );
  }

  /// `L???i k???t n???i m???ng`
  String get network_error {
    return Intl.message(
      'L???i k???t n???i m???ng',
      name: 'network_error',
      desc: '',
      args: [],
    );
  }

  /// `L???i`
  String get error {
    return Intl.message(
      'L???i',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `M???t kh???u`
  String get password {
    return Intl.message(
      'M???t kh???u',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `M???t kh???u kh??ng ???????c ????? tr???ng`
  String get please_input_password {
    return Intl.message(
      'M???t kh???u kh??ng ???????c ????? tr???ng',
      name: 'please_input_password',
      desc: '',
      args: [],
    );
  }

  /// `Qu??n m???t kh???u`
  String get forgot_pass {
    return Intl.message(
      'Qu??n m???t kh???u',
      name: 'forgot_pass',
      desc: '',
      args: [],
    );
  }

  /// `????ng nh???p`
  String get login {
    return Intl.message(
      '????ng nh???p',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `B???n ch??a c?? t??i kho???n? `
  String get not_account {
    return Intl.message(
      'B???n ch??a c?? t??i kho???n? ',
      name: 'not_account',
      desc: '',
      args: [],
    );
  }

  /// `????ng k?? ngay`
  String get register_now {
    return Intl.message(
      '????ng k?? ngay',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `T??n ????ng nh???p kh??ng ???????c ????? tr???ng`
  String get please_input_phone_number {
    return Intl.message(
      'T??n ????ng nh???p kh??ng ???????c ????? tr???ng',
      name: 'please_input_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `S??? ??i???n tho???i kh??ng h???p l???`
  String get phone_not_valid {
    return Intl.message(
      'S??? ??i???n tho???i kh??ng h???p l???',
      name: 'phone_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Trang ch???`
  String get home {
    return Intl.message(
      'Trang ch???',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `K?? n??ng`
  String get technic {
    return Intl.message(
      'K?? n??ng',
      name: 'technic',
      desc: '',
      args: [],
    );
  }

  /// `Kho?? h???c`
  String get course {
    return Intl.message(
      'Kho?? h???c',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `Tr???c nghi???m`
  String get test {
    return Intl.message(
      'Tr???c nghi???m',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `T??m ki???m b???t ?????ng s???n`
  String get search_real_estate {
    return Intl.message(
      'T??m ki???m b???t ?????ng s???n',
      name: 'search_real_estate',
      desc: '',
      args: [],
    );
  }

  /// `B??S\nmua cung`
  String get bds_buy {
    return Intl.message(
      'B??S\nmua cung',
      name: 'bds_buy',
      desc: '',
      args: [],
    );
  }

  /// `K?? g???i`
  String get bds_sign {
    return Intl.message(
      'K?? g???i',
      name: 'bds_sign',
      desc: '',
      args: [],
    );
  }

  /// `B??o c??o\ndoanh thu`
  String get bds_report {
    return Intl.message(
      'B??o c??o\ndoanh thu',
      name: 'bds_report',
      desc: '',
      args: [],
    );
  }

  /// `Qu???n l??\nCTV`
  String get bds_manager {
    return Intl.message(
      'Qu???n l??\nCTV',
      name: 'bds_manager',
      desc: '',
      args: [],
    );
  }

  /// `Xu h?????ng`
  String get trending {
    return Intl.message(
      'Xu h?????ng',
      name: 'trending',
      desc: '',
      args: [],
    );
  }

  /// `B???t ?????ng s???n mua chung`
  String get bds_buy_together {
    return Intl.message(
      'B???t ?????ng s???n mua chung',
      name: 'bds_buy_together',
      desc: '',
      args: [],
    );
  }

  /// `???? mua`
  String get sold {
    return Intl.message(
      '???? mua',
      name: 'sold',
      desc: '',
      args: [],
    );
  }

  /// `???? b??n`
  String get bought {
    return Intl.message(
      '???? b??n',
      name: 'bought',
      desc: '',
      args: [],
    );
  }

  /// `C??n l???i`
  String get remain {
    return Intl.message(
      'C??n l???i',
      name: 'remain',
      desc: '',
      args: [],
    );
  }

  /// `?????u t??`
  String get invest {
    return Intl.message(
      '?????u t??',
      name: 'invest',
      desc: '',
      args: [],
    );
  }

  /// `Kh??m ph??`
  String get discover {
    return Intl.message(
      'Kh??m ph??',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `T???o t??i kho???n`
  String get create_account {
    return Intl.message(
      'T???o t??i kho???n',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `H??? v?? t??n`
  String get full_name {
    return Intl.message(
      'H??? v?? t??n',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Vui l??ng nh???p h??? t??n`
  String get please_input_full_name {
    return Intl.message(
      'Vui l??ng nh???p h??? t??n',
      name: 'please_input_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Nh???p s??? ??i???n tho???i c???a b???n`
  String get input_your_phone {
    return Intl.message(
      'Nh???p s??? ??i???n tho???i c???a b???n',
      name: 'input_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Nh???p email c???a ban`
  String get input_your_email {
    return Intl.message(
      'Nh???p email c???a ban',
      name: 'input_your_email',
      desc: '',
      args: [],
    );
  }

  /// `T??n ????ng nh???p kh??ng ???????c ????? tr???ng`
  String get please_input_email {
    return Intl.message(
      'T??n ????ng nh???p kh??ng ???????c ????? tr???ng',
      name: 'please_input_email',
      desc: '',
      args: [],
    );
  }

  /// `Email kh??ng h???p l???`
  String get email_not_valid {
    return Intl.message(
      'Email kh??ng h???p l???',
      name: 'email_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `????ng k??`
  String get sign_up {
    return Intl.message(
      '????ng k??',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Th??ng b??o`
  String get notice {
    return Intl.message(
      'Th??ng b??o',
      name: 'notice',
      desc: '',
      args: [],
    );
  }

  /// `M???t kh???u kh??ng ????? d?????i 6 k?? t???`
  String get password_not_under_6_character {
    return Intl.message(
      'M???t kh???u kh??ng ????? d?????i 6 k?? t???',
      name: 'password_not_under_6_character',
      desc: '',
      args: [],
    );
  }

  /// `T??i kho???n`
  String get account {
    return Intl.message(
      'T??i kho???n',
      name: 'account',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
