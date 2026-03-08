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

  /// `كلمة المرور الجديدة`
  String get newPasswordRequired {
    return Intl.message(
      'كلمة المرور الجديدة',
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

  /// `رجوع`
  String get back {
    return Intl.message('رجوع', name: 'back', desc: '', args: []);
  }

  /// `لا تقلق، اختر الطريقة المفضلة لاستعادة حسابك وسنرسل لك تعليمات إعادة تعيين كلمة المرور`
  String get chooseRecoveryMethodDesc {
    return Intl.message(
      'لا تقلق، اختر الطريقة المفضلة لاستعادة حسابك وسنرسل لك تعليمات إعادة تعيين كلمة المرور',
      name: 'chooseRecoveryMethodDesc',
      desc: '',
      args: [],
    );
  }

  /// `إرسال رابط إعادة التعيين عبر البريد الإلكتروني`
  String get sendResetLinkViaEmail {
    return Intl.message(
      'إرسال رابط إعادة التعيين عبر البريد الإلكتروني',
      name: 'sendResetLinkViaEmail',
      desc: '',
      args: [],
    );
  }

  /// `إرسال رمز التحقق عبر رسالة نصية (SMS)`
  String get sendVerificationCodeViaSMS {
    return Intl.message(
      'إرسال رمز التحقق عبر رسالة نصية (SMS)',
      name: 'sendVerificationCodeViaSMS',
      desc: '',
      args: [],
    );
  }

  /// `💡 نصيحة: اختر الطريقة التي لديك إمكانية الوصول إليها الآن لاستعادة حسابك بسرعة`
  String get recoveryTip {
    return Intl.message(
      '💡 نصيحة: اختر الطريقة التي لديك إمكانية الوصول إليها الآن لاستعادة حسابك بسرعة',
      name: 'recoveryTip',
      desc: '',
      args: [],
    );
  }

  /// `استعادة عبر البريد الإلكتروني`
  String get recoverViaEmail {
    return Intl.message(
      'استعادة عبر البريد الإلكتروني',
      name: 'recoverViaEmail',
      desc: '',
      args: [],
    );
  }

  /// `أدخل البريد الإلكتروني المسجل في حسابك وسنرسل لك رابط لإعادة تعيين كلمة المرور`
  String get enterRegisteredEmailDesc {
    return Intl.message(
      'أدخل البريد الإلكتروني المسجل في حسابك وسنرسل لك رابط لإعادة تعيين كلمة المرور',
      name: 'enterRegisteredEmailDesc',
      desc: '',
      args: [],
    );
  }

  /// `البريد الإلكتروني المسجل`
  String get registeredEmailRequired {
    return Intl.message(
      'البريد الإلكتروني المسجل',
      name: 'registeredEmailRequired',
      desc: '',
      args: [],
    );
  }

  /// `سنرسل لك رابط آمن لإعادة تعيين كلمة المرور. تحقق من صندوق الوارد والبريد المزعج (Spam).`
  String get secureLinkNotice {
    return Intl.message(
      'سنرسل لك رابط آمن لإعادة تعيين كلمة المرور. تحقق من صندوق الوارد والبريد المزعج (Spam).',
      name: 'secureLinkNotice',
      desc: '',
      args: [],
    );
  }

  /// `إرسال رابط الاستعادة`
  String get sendRecoveryLink {
    return Intl.message(
      'إرسال رابط الاستعادة',
      name: 'sendRecoveryLink',
      desc: '',
      args: [],
    );
  }

  /// `استعادة عبر رقم الهاتف`
  String get recoverViaPhoneNumber {
    return Intl.message(
      'استعادة عبر رقم الهاتف',
      name: 'recoverViaPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `أدخل رقم الهاتف المسجل في حسابك وسنرسل لك رمز التحقق لإعادة تعيين كلمة المرور`
  String get enterRegisteredPhoneDesc {
    return Intl.message(
      'أدخل رقم الهاتف المسجل في حسابك وسنرسل لك رمز التحقق لإعادة تعيين كلمة المرور',
      name: 'enterRegisteredPhoneDesc',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف المسجل`
  String get registeredPhoneRequired {
    return Intl.message(
      'رقم الهاتف المسجل',
      name: 'registeredPhoneRequired',
      desc: '',
      args: [],
    );
  }

  /// `تأكد من إدخال رقم الهاتف المسجل في حسابك. سيتم إرسال رمز التحقق المكون من 6 أرقام عبر رسالة SMS.`
  String get smsVerificationNotice {
    return Intl.message(
      'تأكد من إدخال رقم الهاتف المسجل في حسابك. سيتم إرسال رمز التحقق المكون من 6 أرقام عبر رسالة SMS.',
      name: 'smsVerificationNotice',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور`
  String get forgotPasswordText {
    return Intl.message(
      'نسيت كلمة المرور',
      name: 'forgotPasswordText',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء إدخال رقم هاتف مصري صحيح مكون من 11 رقمًا`
  String get enterValidEgyptianPhone {
    return Intl.message(
      'الرجاء إدخال رقم هاتف مصري صحيح مكون من 11 رقمًا',
      name: 'enterValidEgyptianPhone',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد كلمة المرور`
  String get confirmPassword {
    return Intl.message(
      'تأكيد كلمة المرور',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `أدخل تأكيد كلمة المرور`
  String get enterConfirmPassword {
    return Intl.message(
      'أدخل تأكيد كلمة المرور',
      name: 'enterConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `تم تغيير كلمة السر بنجاح`
  String get passwordChangedSuccessfully {
    return Intl.message(
      'تم تغيير كلمة السر بنجاح',
      name: 'passwordChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `يمكنك الآن استخدام كلمة السر الجديدة لتسجيل الدخول إلى حسابك.`
  String get nowUseNewPasswordToLogin {
    return Intl.message(
      'يمكنك الآن استخدام كلمة السر الجديدة لتسجيل الدخول إلى حسابك.',
      name: 'nowUseNewPasswordToLogin',
      desc: '',
      args: [],
    );
  }

  /// `الذهاب لصفحة تسجيل الدخول`
  String get goToLoginPage {
    return Intl.message(
      'الذهاب لصفحة تسجيل الدخول',
      name: 'goToLoginPage',
      desc: '',
      args: [],
    );
  }

  /// `رمز الـ OTP غير صحيح`
  String get invalidOtpCode {
    return Intl.message(
      'رمز الـ OTP غير صحيح',
      name: 'invalidOtpCode',
      desc: '',
      args: [],
    );
  }

  /// `للأسف الرمز اللي دخلته مش هو اللي بعتناه. راجع الرمز اللي وصلك على الموبايل في رسالة الـ SMS ودخله تاني.`
  String get otpMismatchErrorMsg {
    return Intl.message(
      'للأسف الرمز اللي دخلته مش هو اللي بعتناه. راجع الرمز اللي وصلك على الموبايل في رسالة الـ SMS ودخله تاني.',
      name: 'otpMismatchErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `حاول مرة أخرى`
  String get tryAgain {
    return Intl.message('حاول مرة أخرى', name: 'tryAgain', desc: '', args: []);
  }

  /// `فشل تسجيل الدخول`
  String get loginFailed {
    return Intl.message(
      'فشل تسجيل الدخول',
      name: 'loginFailed',
      desc: '',
      args: [],
    );
  }

  /// `عذرًا، لم نتمكن من تسجيل دخولك. يرجى التحقق من بريدك الإلكتروني وكلمة السر والمحاولة مرة أخرى.`
  String get loginFailedErrorMsg {
    return Intl.message(
      'عذرًا، لم نتمكن من تسجيل دخولك. يرجى التحقق من بريدك الإلكتروني وكلمة السر والمحاولة مرة أخرى.',
      name: 'loginFailedErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد البريد الإلكتروني`
  String get confirmEmail {
    return Intl.message(
      'تأكيد البريد الإلكتروني',
      name: 'confirmEmail',
      desc: '',
      args: [],
    );
  }

  /// `سياسة الخصوصية`
  String get privacyPolicyTitle {
    return Intl.message(
      'سياسة الخصوصية',
      name: 'privacyPolicyTitle',
      desc: '',
      args: [],
    );
  }

  /// `مرحباً بك في تطبيق زاد`
  String get welcomeToZadApp {
    return Intl.message(
      'مرحباً بك في تطبيق زاد',
      name: 'welcomeToZadApp',
      desc: '',
      args: [],
    );
  }

  /// `نحن في "زاد" نحترم خصوصيتك ونلتزم بحماية بياناتك الشخصية. توضح هذه السياسة كيفية جمعنا واستخدامنا وحمايتنا للمعلومات التي تقدمها لنا أثناء استخدامك للتطبيق بهدف إنقاذ الطعام وتوصيله للمحتاجين.`
  String get privacyPolicyIntro {
    return Intl.message(
      'نحن في "زاد" نحترم خصوصيتك ونلتزم بحماية بياناتك الشخصية. توضح هذه السياسة كيفية جمعنا واستخدامنا وحمايتنا للمعلومات التي تقدمها لنا أثناء استخدامك للتطبيق بهدف إنقاذ الطعام وتوصيله للمحتاجين.',
      name: 'privacyPolicyIntro',
      desc: '',
      args: [],
    );
  }

  /// `1. المعلومات التي نجمعها`
  String get infoWeCollectTitle {
    return Intl.message(
      '1. المعلومات التي نجمعها',
      name: 'infoWeCollectTitle',
      desc: '',
      args: [],
    );
  }

  /// `• البيانات الأساسية: مثل الاسم، رقم الهاتف، والبريد الإلكتروني عند التسجيل.\n• بيانات الموقع الجغرافي (Location): نستخدم موقعك لعرض أقرب التبرعات المتاحة لك كمتطوع، أو لتحديد موقع المطعم لتسهيل عملية الاستلام.\n• بيانات الاستخدام: مثل التفاعلات داخل التطبيق، والنقاط التي تم جمعها في نظام المكافآت.`
  String get infoWeCollectBody {
    return Intl.message(
      '• البيانات الأساسية: مثل الاسم، رقم الهاتف، والبريد الإلكتروني عند التسجيل.\n• بيانات الموقع الجغرافي (Location): نستخدم موقعك لعرض أقرب التبرعات المتاحة لك كمتطوع، أو لتحديد موقع المطعم لتسهيل عملية الاستلام.\n• بيانات الاستخدام: مثل التفاعلات داخل التطبيق، والنقاط التي تم جمعها في نظام المكافآت.',
      name: 'infoWeCollectBody',
      desc: '',
      args: [],
    );
  }

  /// `2. كيف نستخدم معلوماتك؟`
  String get howWeUseInfoTitle {
    return Intl.message(
      '2. كيف نستخدم معلوماتك؟',
      name: 'howWeUseInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `• لتوصيل المطاعم والمتبرعين بالمتطوعين القريبين جغرافياً.\n• لإرسال إشعارات (Push Notifications) بالتسليمات الجديدة وحالات الطلبات.\n• لتحسين تجربة المستخدم وتقديم دعم فني أسرع.\n• لحساب إحصائيات التطبيق مثل (الوجبات المنقذة وانبعاثات الكربون التي تم تقليلها).`
  String get howWeUseInfoBody {
    return Intl.message(
      '• لتوصيل المطاعم والمتبرعين بالمتطوعين القريبين جغرافياً.\n• لإرسال إشعارات (Push Notifications) بالتسليمات الجديدة وحالات الطلبات.\n• لتحسين تجربة المستخدم وتقديم دعم فني أسرع.\n• لحساب إحصائيات التطبيق مثل (الوجبات المنقذة وانبعاثات الكربون التي تم تقليلها).',
      name: 'howWeUseInfoBody',
      desc: '',
      args: [],
    );
  }

  /// `3. مشاركة البيانات`
  String get dataSharingTitle {
    return Intl.message(
      '3. مشاركة البيانات',
      name: 'dataSharingTitle',
      desc: '',
      args: [],
    );
  }

  /// `نحن لا نبيع بياناتك الشخصية لأي طرف ثالث. قد نشارك معلومات محدودة (مثل اسم المتطوع ورقم هاتفه وموقعه) مع المطعم المعني فقط لضمان نجاح عملية تسليم التبرع بأمان وسرعة.`
  String get dataSharingBody {
    return Intl.message(
      'نحن لا نبيع بياناتك الشخصية لأي طرف ثالث. قد نشارك معلومات محدودة (مثل اسم المتطوع ورقم هاتفه وموقعه) مع المطعم المعني فقط لضمان نجاح عملية تسليم التبرع بأمان وسرعة.',
      name: 'dataSharingBody',
      desc: '',
      args: [],
    );
  }

  /// `4. حماية البيانات`
  String get dataProtectionTitle {
    return Intl.message(
      '4. حماية البيانات',
      name: 'dataProtectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `نتخذ كافة التدابير التقنية والأمنية المعقولة لحماية بياناتك من الوصول غير المصرح به أو التعديل أو الإفشاء. يتم تشفير كلمات المرور وتأمين الاتصال بقواعد البيانات الخاصة بنا.`
  String get dataProtectionBody {
    return Intl.message(
      'نتخذ كافة التدابير التقنية والأمنية المعقولة لحماية بياناتك من الوصول غير المصرح به أو التعديل أو الإفشاء. يتم تشفير كلمات المرور وتأمين الاتصال بقواعد البيانات الخاصة بنا.',
      name: 'dataProtectionBody',
      desc: '',
      args: [],
    );
  }

  /// `5. حقوقك`
  String get yourRightsTitle {
    return Intl.message(
      '5. حقوقك',
      name: 'yourRightsTitle',
      desc: '',
      args: [],
    );
  }

  /// `يحق لك في أي وقت تعديل بياناتك الشخصية من خلال صفحة "حسابي"، أو طلب حذف الحساب نهائياً ومسح كافة بياناتك المرتبطة به بالتواصل مع الدعم الفني.`
  String get yourRightsBody {
    return Intl.message(
      'يحق لك في أي وقت تعديل بياناتك الشخصية من خلال صفحة "حسابي"، أو طلب حذف الحساب نهائياً ومسح كافة بياناتك المرتبطة به بالتواصل مع الدعم الفني.',
      name: 'yourRightsBody',
      desc: '',
      args: [],
    );
  }

  /// `قرأت وأوافق`
  String get readAndAgree {
    return Intl.message(
      'قرأت وأوافق',
      name: 'readAndAgree',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء الموافقة على الشروط والأحكام`
  String get pleaseAgreeToTerms {
    return Intl.message(
      'الرجاء الموافقة على الشروط والأحكام',
      name: 'pleaseAgreeToTerms',
      desc: '',
      args: [],
    );
  }

  /// `حسابي`
  String get myAccount {
    return Intl.message('حسابي', name: 'myAccount', desc: '', args: []);
  }

  /// `الإشعارات`
  String get notifications {
    return Intl.message('الإشعارات', name: 'notifications', desc: '', args: []);
  }

  /// `تبرعاتي`
  String get myDonations {
    return Intl.message('تبرعاتي', name: 'myDonations', desc: '', args: []);
  }

  /// `الرئيسية`
  String get home {
    return Intl.message('الرئيسية', name: 'home', desc: '', args: []);
  }

  /// `مهامي`
  String get myTasks {
    return Intl.message('مهامي', name: 'myTasks', desc: '', args: []);
  }

  /// `أهلاً، `
  String get hello {
    return Intl.message('أهلاً، ', name: 'hello', desc: '', args: []);
  }

  /// `إجمالي التبرعات`
  String get totalDonations {
    return Intl.message(
      'إجمالي التبرعات',
      name: 'totalDonations',
      desc: '',
      args: [],
    );
  }

  /// `هذا الشهر`
  String get thisMonth {
    return Intl.message('هذا الشهر', name: 'thisMonth', desc: '', args: []);
  }

  /// `وجبات تم إنقاذها`
  String get mealsSaved {
    return Intl.message(
      'وجبات تم إنقاذها',
      name: 'mealsSaved',
      desc: '',
      args: [],
    );
  }

  /// `وجبة`
  String get meal {
    return Intl.message('وجبة', name: 'meal', desc: '', args: []);
  }

  /// `كجم`
  String get kg {
    return Intl.message('كجم', name: 'kg', desc: '', args: []);
  }

  /// `إضافة تبرع جديد`
  String get addNewDonation {
    return Intl.message(
      'إضافة تبرع جديد',
      name: 'addNewDonation',
      desc: '',
      args: [],
    );
  }

  /// `النشاط الأخير`
  String get recentActivity {
    return Intl.message(
      'النشاط الأخير',
      name: 'recentActivity',
      desc: '',
      args: [],
    );
  }

  /// `عرض الكل`
  String get viewAll {
    return Intl.message('عرض الكل', name: 'viewAll', desc: '', args: []);
  }

  /// `المتطوع في الطريق`
  String get volunteerOnTheWay {
    return Intl.message(
      'المتطوع في الطريق',
      name: 'volunteerOnTheWay',
      desc: '',
      args: [],
    );
  }

  /// `قيد الانتظار`
  String get pending {
    return Intl.message('قيد الانتظار', name: 'pending', desc: '', args: []);
  }

  /// `تم الاستلام`
  String get received {
    return Intl.message('تم الاستلام', name: 'received', desc: '', args: []);
  }

  /// `منذ `
  String get since {
    return Intl.message('منذ ', name: 'since', desc: '', args: []);
  }

  /// `دقيقة`
  String get minute {
    return Intl.message('دقيقة', name: 'minute', desc: '', args: []);
  }

  /// `ساعة`
  String get hour {
    return Intl.message('ساعة', name: 'hour', desc: '', args: []);
  }

  /// `إضافة تبرع`
  String get addDonation {
    return Intl.message('إضافة تبرع', name: 'addDonation', desc: '', args: []);
  }

  /// `ما نوع التبرع؟`
  String get whatIsDonationType {
    return Intl.message(
      'ما نوع التبرع؟',
      name: 'whatIsDonationType',
      desc: '',
      args: [],
    );
  }

  /// `أضف صورة وتفاصيل عن الطعام`
  String get addPhotoAndDetails {
    return Intl.message(
      'أضف صورة وتفاصيل عن الطعام',
      name: 'addPhotoAndDetails',
      desc: '',
      args: [],
    );
  }

  /// `صورة الطعام`
  String get foodPhoto {
    return Intl.message('صورة الطعام', name: 'foodPhoto', desc: '', args: []);
  }

  /// `التقط صورة`
  String get takePhoto {
    return Intl.message('التقط صورة', name: 'takePhoto', desc: '', args: []);
  }

  /// `عنوان التبرع`
  String get donationTitle {
    return Intl.message(
      'عنوان التبرع',
      name: 'donationTitle',
      desc: '',
      args: [],
    );
  }

  /// `مثال: وجبات أرز ودجاج متبقية`
  String get donationTitleExample {
    return Intl.message(
      'مثال: وجبات أرز ودجاج متبقية',
      name: 'donationTitleExample',
      desc: '',
      args: [],
    );
  }

  /// `التصنيف`
  String get category {
    return Intl.message('التصنيف', name: 'category', desc: '', args: []);
  }

  /// `🥖 مخبوزات`
  String get bakery {
    return Intl.message('🥖 مخبوزات', name: 'bakery', desc: '', args: []);
  }

  /// `🍲 وجبات جاهزة`
  String get preparedMeals {
    return Intl.message(
      '🍲 وجبات جاهزة',
      name: 'preparedMeals',
      desc: '',
      args: [],
    );
  }

  /// `🥛 ألبان`
  String get dairy {
    return Intl.message('🥛 ألبان', name: 'dairy', desc: '', args: []);
  }

  /// `🍎 فواكه`
  String get fruits {
    return Intl.message('🍎 فواكه', name: 'fruits', desc: '', args: []);
  }

  /// `🥕 مواد خام`
  String get rawMaterials {
    return Intl.message(
      '🥕 مواد خام',
      name: 'rawMaterials',
      desc: '',
      args: [],
    );
  }

  /// `وصف إضافي (اختياري)`
  String get additionalDescriptionOptional {
    return Intl.message(
      'وصف إضافي (اختياري)',
      name: 'additionalDescriptionOptional',
      desc: '',
      args: [],
    );
  }

  /// `أضف أي تفاصيل إضافية...`
  String get addAdditionalDetails {
    return Intl.message(
      'أضف أي تفاصيل إضافية...',
      name: 'addAdditionalDetails',
      desc: '',
      args: [],
    );
  }

  /// `الكمية والتفاصيل`
  String get quantityAndDetails {
    return Intl.message(
      'الكمية والتفاصيل',
      name: 'quantityAndDetails',
      desc: '',
      args: [],
    );
  }

  /// `حدد الكمية وتاريخ الصلاحية`
  String get specifyQuantityAndExpiry {
    return Intl.message(
      'حدد الكمية وتاريخ الصلاحية',
      name: 'specifyQuantityAndExpiry',
      desc: '',
      args: [],
    );
  }

  /// `الكمية (كجم أو وجبة)`
  String get quantityKgOrMeal {
    return Intl.message(
      'الكمية (كجم أو وجبة)',
      name: 'quantityKgOrMeal',
      desc: '',
      args: [],
    );
  }

  /// `10`
  String get quantityExample {
    return Intl.message('10', name: 'quantityExample', desc: '', args: []);
  }

  /// `تاريخ الصلاحية`
  String get expiryDate {
    return Intl.message(
      'تاريخ الصلاحية',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `💡 تأكد من أن الطعام صالح للاستهلاك وآمن للمستفيدين`
  String get foodSafetyTip {
    return Intl.message(
      '💡 تأكد من أن الطعام صالح للاستهلاك وآمن للمستفيدين',
      name: 'foodSafetyTip',
      desc: '',
      args: [],
    );
  }

  /// `موعد الاستلام`
  String get pickupTime {
    return Intl.message(
      'موعد الاستلام',
      name: 'pickupTime',
      desc: '',
      args: [],
    );
  }

  /// `حدد الفترة المتاحة للاستلام`
  String get selectAvailablePickupTime {
    return Intl.message(
      'حدد الفترة المتاحة للاستلام',
      name: 'selectAvailablePickupTime',
      desc: '',
      args: [],
    );
  }

  /// `التاريخ`
  String get date {
    return Intl.message('التاريخ', name: 'date', desc: '', args: []);
  }

  /// `غداً`
  String get tomorrow {
    return Intl.message('غداً', name: 'tomorrow', desc: '', args: []);
  }

  /// `اليوم`
  String get today {
    return Intl.message('اليوم', name: 'today', desc: '', args: []);
  }

  /// `الوقت من - إلى`
  String get timeFromTo {
    return Intl.message(
      'الوقت من - إلى',
      name: 'timeFromTo',
      desc: '',
      args: [],
    );
  }

  /// `إلى`
  String get to {
    return Intl.message('إلى', name: 'to', desc: '', args: []);
  }

  /// `من`
  String get from {
    return Intl.message('من', name: 'from', desc: '', args: []);
  }

  /// `📅 ملخص الموعد`
  String get appointmentSummary {
    return Intl.message(
      '📅 ملخص الموعد',
      name: 'appointmentSummary',
      desc: '',
      args: [],
    );
  }

  /// `متاح للاستلام`
  String get availableForPickup {
    return Intl.message(
      'متاح للاستلام',
      name: 'availableForPickup',
      desc: '',
      args: [],
    );
  }

  /// `بين الساعة`
  String get betweenTime {
    return Intl.message('بين الساعة', name: 'betweenTime', desc: '', args: []);
  }

  /// `نشر التبرع الآن`
  String get publishDonationNow {
    return Intl.message(
      'نشر التبرع الآن',
      name: 'publishDonationNow',
      desc: '',
      args: [],
    );
  }

  /// `الكمية`
  String get quantityLabel {
    return Intl.message('الكمية', name: 'quantityLabel', desc: '', args: []);
  }

  /// `تاريخ الصلاحية`
  String get expiryDateLabel {
    return Intl.message(
      'تاريخ الصلاحية',
      name: 'expiryDateLabel',
      desc: '',
      args: [],
    );
  }

  /// `موعد الاستلام`
  String get pickupTimeLabel {
    return Intl.message(
      'موعد الاستلام',
      name: 'pickupTimeLabel',
      desc: '',
      args: [],
    );
  }

  /// `⚠️ بنشر هذا التبرع، أنت تؤكد أن الطعام آمن وصالح للاستهلاك وتلتزم بموعد الاستلام المحدد.`
  String get publishDisclaimer {
    return Intl.message(
      '⚠️ بنشر هذا التبرع، أنت تؤكد أن الطعام آمن وصالح للاستهلاك وتلتزم بموعد الاستلام المحدد.',
      name: 'publishDisclaimer',
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
