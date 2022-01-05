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

  /// `Tiếng việt`
  String get settings_languageVietnamese {
    return Intl.message(
      'Tiếng việt',
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

  /// `Chào mừng bạn đến với\nCTV-HOLDINGS`
  String get welcome_app {
    return Intl.message(
      'Chào mừng bạn đến với\nCTV-HOLDINGS',
      name: 'welcome_app',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập để có trải nghiệm tốt nhất`
  String get welcome_app_2 {
    return Intl.message(
      'Đăng nhập để có trải nghiệm tốt nhất',
      name: 'welcome_app_2',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số điện thoại`
  String get input_phone {
    return Intl.message(
      'Nhập số điện thoại',
      name: 'input_phone',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi kết nối mạng`
  String get network_error {
    return Intl.message(
      'Lỗi kết nối mạng',
      name: 'network_error',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi`
  String get error {
    return Intl.message(
      'Lỗi',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không được để trống`
  String get please_input_password {
    return Intl.message(
      'Mật khẩu không được để trống',
      name: 'please_input_password',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu`
  String get forgot_pass {
    return Intl.message(
      'Quên mật khẩu',
      name: 'forgot_pass',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa có tài khoản? `
  String get not_account {
    return Intl.message(
      'Bạn chưa có tài khoản? ',
      name: 'not_account',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký ngay`
  String get register_now {
    return Intl.message(
      'Đăng ký ngay',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập không được để trống`
  String get please_input_phone_number {
    return Intl.message(
      'Tên đăng nhập không được để trống',
      name: 'please_input_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại không hợp lệ`
  String get phone_not_valid {
    return Intl.message(
      'Số điện thoại không hợp lệ',
      name: 'phone_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Trang chủ`
  String get home {
    return Intl.message(
      'Trang chủ',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Kĩ năng`
  String get technic {
    return Intl.message(
      'Kĩ năng',
      name: 'technic',
      desc: '',
      args: [],
    );
  }

  /// `Khoá học`
  String get course {
    return Intl.message(
      'Khoá học',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `Trắc nghiệm`
  String get test {
    return Intl.message(
      'Trắc nghiệm',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm bất động sản`
  String get search_real_estate {
    return Intl.message(
      'Tìm kiếm bất động sản',
      name: 'search_real_estate',
      desc: '',
      args: [],
    );
  }

  /// `BĐS\nmua cung`
  String get bds_buy {
    return Intl.message(
      'BĐS\nmua cung',
      name: 'bds_buy',
      desc: '',
      args: [],
    );
  }

  /// `Ký gửi`
  String get bds_sign {
    return Intl.message(
      'Ký gửi',
      name: 'bds_sign',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo\ndoanh thu`
  String get bds_report {
    return Intl.message(
      'Báo cáo\ndoanh thu',
      name: 'bds_report',
      desc: '',
      args: [],
    );
  }

  /// `Quản lí\nCTV`
  String get bds_manager {
    return Intl.message(
      'Quản lí\nCTV',
      name: 'bds_manager',
      desc: '',
      args: [],
    );
  }

  /// `Xu hướng`
  String get trending {
    return Intl.message(
      'Xu hướng',
      name: 'trending',
      desc: '',
      args: [],
    );
  }

  /// `Bất động sản mua chung`
  String get bds_buy_together {
    return Intl.message(
      'Bất động sản mua chung',
      name: 'bds_buy_together',
      desc: '',
      args: [],
    );
  }

  /// `Đã mua`
  String get sold {
    return Intl.message(
      'Đã mua',
      name: 'sold',
      desc: '',
      args: [],
    );
  }

  /// `Đã bán`
  String get bought {
    return Intl.message(
      'Đã bán',
      name: 'bought',
      desc: '',
      args: [],
    );
  }

  /// `Còn lại`
  String get remain {
    return Intl.message(
      'Còn lại',
      name: 'remain',
      desc: '',
      args: [],
    );
  }

  /// `Đầu tư`
  String get invest {
    return Intl.message(
      'Đầu tư',
      name: 'invest',
      desc: '',
      args: [],
    );
  }

  /// `Khám phá`
  String get discover {
    return Intl.message(
      'Khám phá',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `Tạo tài khoản`
  String get create_account {
    return Intl.message(
      'Tạo tài khoản',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên`
  String get full_name {
    return Intl.message(
      'Họ và tên',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập họ tên`
  String get please_input_full_name {
    return Intl.message(
      'Vui lòng nhập họ tên',
      name: 'please_input_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số điện thoại của bạn`
  String get input_your_phone {
    return Intl.message(
      'Nhập số điện thoại của bạn',
      name: 'input_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Nhập email của ban`
  String get input_your_email {
    return Intl.message(
      'Nhập email của ban',
      name: 'input_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập không được để trống`
  String get please_input_email {
    return Intl.message(
      'Tên đăng nhập không được để trống',
      name: 'please_input_email',
      desc: '',
      args: [],
    );
  }

  /// `Email không hợp lệ`
  String get email_not_valid {
    return Intl.message(
      'Email không hợp lệ',
      name: 'email_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký`
  String get sign_up {
    return Intl.message(
      'Đăng ký',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get notice {
    return Intl.message(
      'Thông báo',
      name: 'notice',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không để dưới 6 ký tự`
  String get password_not_under_6_character {
    return Intl.message(
      'Mật khẩu không để dưới 6 ký tự',
      name: 'password_not_under_6_character',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get account {
    return Intl.message(
      'Tài khoản',
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
