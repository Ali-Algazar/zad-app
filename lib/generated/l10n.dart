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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `منصة زاد الخير`
  String get zadElKheirPlatform {
    return Intl.message(
      'منصة زاد الخير',
      name: 'zadElKheirPlatform',
      desc: '',
      args: [],
    );
  }

  /// `معاً نقلل الهدر وننقذ الطعام`
  String get reduceWasteSlogan {
    return Intl.message(
      'معاً نقلل الهدر وننقذ الطعام',
      name: 'reduceWasteSlogan',
      desc: '',
      args: [],
    );
  }

  /// `تخطي`
  String get skip {
    return Intl.message('تخطي', name: 'skip', desc: '', args: []);
  }

  /// `تبرع بسهولة`
  String get donateEasily {
    return Intl.message(
      'تبرع بسهولة',
      name: 'donateEasily',
      desc: '',
      args: [],
    );
  }

  /// `شارك الطعام الفائض مع من يحتاجه في مجتمعك بضغطة زر واحدة`
  String get shareSurplusFood {
    return Intl.message(
      'شارك الطعام الفائض مع من يحتاجه في مجتمعك بضغطة زر واحدة',
      name: 'shareSurplusFood',
      desc: '',
      args: [],
    );
  }

  /// `استلم ووزع`
  String get receiveAndDistribute {
    return Intl.message(
      'استلم ووزع',
      name: 'receiveAndDistribute',
      desc: '',
      args: [],
    );
  }

  /// `احصل على إشعارات فورية للتبرعات القريبة منك ووزعها على المحتاجين`
  String get getInstantNotifications {
    return Intl.message(
      'احصل على إشعارات فورية للتبرعات القريبة منك ووزعها على المحتاجين',
      name: 'getInstantNotifications',
      desc: '',
      args: [],
    );
  }

  /// `كن جزءاً من التغيير`
  String get bePartOfChange {
    return Intl.message(
      'كن جزءاً من التغيير',
      name: 'bePartOfChange',
      desc: '',
      args: [],
    );
  }

  /// `ساهم في تقليل هدر الطعام وحماية البيئة مع مساعدة الأسر المحتاجة`
  String get contributeToReducingWaste {
    return Intl.message(
      'ساهم في تقليل هدر الطعام وحماية البيئة مع مساعدة الأسر المحتاجة',
      name: 'contributeToReducingWaste',
      desc: '',
      args: [],
    );
  }

  /// `ابدأ رحلتك الآن`
  String get startYourJourneyNow {
    return Intl.message(
      'ابدأ رحلتك الآن',
      name: 'startYourJourneyNow',
      desc: '',
      args: [],
    );
  }

  /// `انضم إلى آلاف المتطوعين والمتبرعين في جميع أنحاء مصر`
  String get joinThousandsOfVolunteers {
    return Intl.message(
      'انضم إلى آلاف المتطوعين والمتبرعين في جميع أنحاء مصر',
      name: 'joinThousandsOfVolunteers',
      desc: '',
      args: [],
    );
  }

  /// `ابدأ الآن`
  String get startNow {
    return Intl.message('ابدأ الآن', name: 'startNow', desc: '', args: []);
  }

  /// `التالي`
  String get next {
    return Intl.message('التالي', name: 'next', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
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
