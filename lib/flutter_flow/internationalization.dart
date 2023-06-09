import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // logIn
  {
    'cpimxtr8': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
    },
    'esw5qf6c': {
      'en': 'Email',
      'ar': 'البريد إلكتروني',
    },
    'yczm0qrm': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '9ium5h9e': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
    },
    'oa9qf75t': {
      'en': 'Forgot password',
      'ar': 'هل نسيت كلمة السر',
    },
    '5blnyd3y': {
      'en': 'Or sign in with',
      'ar': 'أو قم بتسجيل الدخول باستخدام',
    },
    'pk20cyus': {
      'en': 'Google',
      'ar': 'Google',
    },
    'egjwe9sj': {
      'en': 'Apple',
      'ar': 'Apple',
    },
    'mwyllrkm': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ForgotPassword
  {
    'ozncuavk': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ar':
          'سنرسل لك بريدًا إلكترونيًا يحتوي على رابط لإعادة تعيين كلمة المرور الخاصة بك ، يرجى إدخال البريد الإلكتروني المرتبط بحسابك أدناه.',
    },
    '81pvwb75': {
      'en': 'Send Link',
      'ar': 'أرسل الرابط',
    },
    'zycqsnor': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
    },
    '46dm3lb6': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Home
  {
    'mpr9hs2r': {
      'en': 'Button',
      'ar': '',
    },
    '32i39ac5': {
      'en': 'Page Title',
      'ar': '',
    },
    'vvtkszi3': {
      'en': 'Home',
      'ar': '',
    },
  },
  // admin
  {
    'z72vwg1v': {
      'en': 'Admin contol',
      'ar': 'تحكم المشرف',
    },
    'cso9gf2y': {
      'en': 'Log out',
      'ar': 'تسجيل خروج',
    },
    'fkn2hqr6': {
      'en': 'Admin',
      'ar': 'الاداري',
    },
    'zzwpli0v': {
      'en': 'Clubs',
      'ar': 'الاندية',
    },
    'up56z3dj': {
      'en': 'Subtitle goes here...',
      'ar': '',
    },
    'srckq6g5': {
      'en': 'Title',
      'ar': '',
    },
    'tqnmndkf': {
      'en': 'Subtitle goes here...',
      'ar': '',
    },
    'hdw80cqi': {
      'en': 'Members',
      'ar': 'الاعضاء',
    },
    'cvol3j2e': {
      'en': 'Member management',
      'ar': 'ادارة الاعضاء',
    },
    'myjm1s5y': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // Profile
  {
    'aldch780': {
      'en': 'Your profile',
      'ar': 'ملفك الشخصي',
    },
    'sr4zev66': {
      'en': 'Log out',
      'ar': 'تسجيل خروج',
    },
    'xwicembv': {
      'en': 'Admin',
      'ar': 'الاداري',
    },
    '0wma2b5x': {
      'en': 'Title',
      'ar': '',
    },
    '0436g3zd': {
      'en': 'Subtitle goes here...',
      'ar': '',
    },
    '5byhc1ud': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Teams
  {
    'zcr2qjga': {
      'en': 'List Item Title',
      'ar': '',
    },
    'dfyh9gkf': {
      'en': 'Page Title',
      'ar': '',
    },
    '08od7gi4': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Members
  {
    'xp624fhy': {
      'en': 'Edit',
      'ar': 'تعديل',
    },
    'yic0qsnj': {
      'en': 'Members',
      'ar': 'الاعضاء',
    },
    '4xsruki1': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AddNewTeam
  {
    'jwmtdyzw': {
      'en': 'Team name',
      'ar': 'اسم الفريق',
    },
    '4nlkyorc': {
      'en': 'Button',
      'ar': '',
    },
  },
  // UpdateMemberData
  {
    'cy1rltak': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '430n45vq': {
      'en': 'Name',
      'ar': 'الاسم',
    },
    'wwqen8tw': {
      'en': 'Active member',
      'ar': 'عضو نشط',
    },
    'hhqr0jld': {
      'en': 'Admin member',
      'ar': 'عضو إداري',
    },
    'w196sqry': {
      'en': 'Update member data',
      'ar': 'تحديث بيانات العضو',
    },
  },
  // addNewMember
  {
    's7a5db50': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'knglov3y': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'rsr51lxw': {
      'en': '',
      'ar': '',
    },
    'k87zt5d4': {
      'en': 'Name',
      'ar': 'الاسم',
    },
    'sx6l5h1t': {
      'en': 'Active member',
      'ar': 'عضو نشط',
    },
    'bd6swm07': {
      'en': 'Admin member',
      'ar': 'عضو إداري',
    },
    'uoj01qjx': {
      'en': 'Create member account',
      'ar': 'إنشاء حساب عضو',
    },
  },
  // Miscellaneous
  {
    's6yiju6t': {
      'en': '',
      'ar': '',
    },
    'pn369l05': {
      'en': '',
      'ar': '',
    },
    '12e1pd9y': {
      'en': '',
      'ar': '',
    },
    'ml7wtu0j': {
      'en': '',
      'ar': '',
    },
    '3be4eoh8': {
      'en': '',
      'ar': '',
    },
    'c4x4o2r3': {
      'en': '',
      'ar': '',
    },
    'jnn3e1sc': {
      'en': '',
      'ar': '',
    },
    'ugy3flez': {
      'en': '',
      'ar': '',
    },
    'uhkaovxw': {
      'en': '',
      'ar': '',
    },
    'xqzg432p': {
      'en': '',
      'ar': '',
    },
    'y4vkdd6m': {
      'en': '',
      'ar': '',
    },
    'nd0vx833': {
      'en': '',
      'ar': '',
    },
    '6sqqp824': {
      'en': '',
      'ar': '',
    },
    'u8v02bec': {
      'en': '',
      'ar': '',
    },
    'rlv7863u': {
      'en': '',
      'ar': '',
    },
    '1gp8ulqa': {
      'en': '',
      'ar': '',
    },
    'mzm4q5me': {
      'en': '',
      'ar': '',
    },
    's6pv9qpd': {
      'en': '',
      'ar': '',
    },
    'szogxh1r': {
      'en': '',
      'ar': '',
    },
    '3bfnvj4i': {
      'en': '',
      'ar': '',
    },
    'jjq1xmij': {
      'en': '',
      'ar': '',
    },
    'vldh3iz3': {
      'en': '',
      'ar': '',
    },
    'twjuqdfr': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
