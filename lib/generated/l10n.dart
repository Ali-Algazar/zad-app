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

  /// `تسجيل الدخول`
  String get login {
    return Intl.message('تسجيل الدخول', name: 'login', desc: '', args: []);
  }

  /// `مرحباً بك مرة أخرى`
  String get welcomeBack {
    return Intl.message(
      'مرحباً بك مرة أخرى',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `البريد الإلكتروني`
  String get email {
    return Intl.message('البريد الإلكتروني', name: 'email', desc: '', args: []);
  }

  /// `أدخل البريد الإلكتروني`
  String get enterEmail {
    return Intl.message(
      'أدخل البريد الإلكتروني',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message('كلمة المرور', name: 'password', desc: '', args: []);
  }

  /// `أدخل كلمة المرور`
  String get enterPassword {
    return Intl.message(
      'أدخل كلمة المرور',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور؟`
  String get forgotPassword {
    return Intl.message(
      'نسيت كلمة المرور؟',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `ليس لديك حساب؟`
  String get dontHaveAccount {
    return Intl.message(
      'ليس لديك حساب؟',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء حساب`
  String get createAccount {
    return Intl.message(
      'إنشاء حساب',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء حساب جديد`
  String get createNewAccount {
    return Intl.message(
      'إنشاء حساب جديد',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `انضم إلينا وابدأ في إحداث فرق`
  String get joinUsMakeDifference {
    return Intl.message(
      'انضم إلينا وابدأ في إحداث فرق',
      name: 'joinUsMakeDifference',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف`
  String get phoneNumberRequired {
    return Intl.message(
      'رقم الهاتف',
      name: 'phoneNumberRequired',
      desc: '',
      args: [],
    );
  }

  /// `مثال: 01234567890`
  String get phoneExample {
    return Intl.message(
      'مثال: 01234567890',
      name: 'phoneExample',
      desc: '',
      args: [],
    );
  }

  /// `الاسم بالكامل`
  String get fullNameRequired {
    return Intl.message(
      'الاسم بالكامل',
      name: 'fullNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `أدخل اسمك الكامل`
  String get enterFullName {
    return Intl.message(
      'أدخل اسمك الكامل',
      name: 'enterFullName',
      desc: '',
      args: [],
    );
  }

  /// `المدينة`
  String get city {
    return Intl.message('المدينة', name: 'city', desc: '', args: []);
  }

  /// `أدخل المدينة`
  String get enterCity {
    return Intl.message('أدخل المدينة', name: 'enterCity', desc: '', args: []);
  }

  /// `اختر الدور`
  String get chooseRole {
    return Intl.message('اختر الدور', name: 'chooseRole', desc: '', args: []);
  }

  /// `متبرع - لديّ طعام فائض للتبرع`
  String get donorRoleDesc {
    return Intl.message(
      'متبرع - لديّ طعام فائض للتبرع',
      name: 'donorRoleDesc',
      desc: '',
      args: [],
    );
  }

  /// `متطوع - أريد المساعدة في توزيع الطعام`
  String get volunteerRoleDesc {
    return Intl.message(
      'متطوع - أريد المساعدة في توزيع الطعام',
      name: 'volunteerRoleDesc',
      desc: '',
      args: [],
    );
  }

  /// `مستلم - أبحث عن مساعدات غذائية`
  String get recipientRoleDesc {
    return Intl.message(
      'مستلم - أبحث عن مساعدات غذائية',
      name: 'recipientRoleDesc',
      desc: '',
      args: [],
    );
  }

  /// `أوافق على`
  String get agreeTo {
    return Intl.message('أوافق على', name: 'agreeTo', desc: '', args: []);
  }

  /// `الشروط والأحكام`
  String get terms {
    return Intl.message('الشروط والأحكام', name: 'terms', desc: '', args: []);
  }

  /// `و`
  String get and {
    return Intl.message('و', name: 'and', desc: '', args: []);
  }

  /// `سياسة الخصوصية`
  String get privacy {
    return Intl.message('سياسة الخصوصية', name: 'privacy', desc: '', args: []);
  }

  /// `لديك حساب بالفعل؟`
  String get alreadyHaveAccount {
    return Intl.message(
      'لديك حساب بالفعل؟',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور؟`
  String get forgotPasswordTitle {
    return Intl.message(
      'نسيت كلمة المرور؟',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `لا تقلق، سنرسل لك تعليمات إعادة تعيين كلمة المرور`
  String get dontWorryResetInstructions {
    return Intl.message(
      'لا تقلق، سنرسل لك تعليمات إعادة تعيين كلمة المرور',
      name: 'dontWorryResetInstructions',
      desc: '',
      args: [],
    );
  }

  /// `إرسال الكود`
  String get sendCode {
    return Intl.message('إرسال الكود', name: 'sendCode', desc: '', args: []);
  }

  /// `تأكيد رقم الهاتف`
  String get verifyPhoneNumber {
    return Intl.message(
      'تأكيد رقم الهاتف',
      name: 'verifyPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `تم إرسال رمز التحقق إلى`
  String get verificationCodeSentTo {
    return Intl.message(
      'تم إرسال رمز التحقق إلى',
      name: 'verificationCodeSentTo',
      desc: '',
      args: [],
    );
  }

  /// `إعادة إرسال الرمز بعد `
  String get resendCodeAfter {
    return Intl.message(
      'إعادة إرسال الرمز بعد ',
      name: 'resendCodeAfter',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد`
  String get confirm {
    return Intl.message('تأكيد', name: 'confirm', desc: '', args: []);
  }

  /// `إعادة تعيين كلمة المرور`
  String get resetPassword {
    return Intl.message(
      'إعادة تعيين كلمة المرور',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `اختر كلمة مرور جديدة وقوية لحسابك`
  String get chooseStrongPassword {
    return Intl.message(
      'اختر كلمة مرور جديدة وقوية لحسابك',
      name: 'chooseStrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور الجديدة *`
  String get newPasswordRequired {
    return Intl.message(
      'كلمة المرور الجديدة *',
      name: 'newPasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `أدخل كلمة المرور الجديدة`
  String get enterNewPassword {
    return Intl.message(
      'أدخل كلمة المرور الجديدة',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `8 أحرف على الأقل`
  String get atLeast8Characters {
    return Intl.message(
      '8 أحرف على الأقل',
      name: 'atLeast8Characters',
      desc: '',
      args: [],
    );
  }

  /// `حرف كبير واحد على الأقل`
  String get atLeastOneUppercase {
    return Intl.message(
      'حرف كبير واحد على الأقل',
      name: 'atLeastOneUppercase',
      desc: '',
      args: [],
    );
  }

  /// `استخدم رمز واحد على الأقل من الرموز`
  String get atLeastOneSpecialChar {
    return Intl.message(
      'استخدم رمز واحد على الأقل من الرموز',
      name: 'atLeastOneSpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `تغيير كلمة المرور`
  String get changePassword {
    return Intl.message(
      'تغيير كلمة المرور',
      name: 'changePassword',
      desc: '',
      args: [],
    );
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
