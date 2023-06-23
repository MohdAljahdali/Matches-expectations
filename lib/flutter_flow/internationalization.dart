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
      'en': 'Your Profile',
      'ar': 'ملفك الشخصي',
    },
    '2r080iob': {
      'en': 'Countries',
      'ar': 'الدول',
    },
    'av91p30v': {
      'en': 'Countries management',
      'ar': 'ادارة الدول',
    },
    'srckq6g5': {
      'en': 'Tournaments',
      'ar': 'البطولات',
    },
    'tqnmndkf': {
      'en': 'Tournaments settings',
      'ar': 'اعدادات البطولات',
    },
    'zzwpli0v': {
      'en': 'Clubs',
      'ar': 'الاندية',
    },
    'up56z3dj': {
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
      'en': 'settings',
      'ar': 'الاعدادات',
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
    'rr017r9r': {
      'en': 'Switch to light mode',
      'ar': 'التحويل الى المظهر الفاتح',
    },
    'mk4ytka8': {
      'en': 'Switch to dark mode',
      'ar': 'التحويل الى المظهر الداكن',
    },
    'p34uvxro': {
      'en': 'Change to English',
      'ar': 'تغير اللغة الى الانجليزية',
    },
    'b0wft5ts': {
      'en': 'Change to Arabic',
      'ar': 'تغير اللغة الى العربية',
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
  // addTournamentsManual
  {
    '17dljnwo': {
      'en': 'Label here...',
      'ar': '',
    },
    '1fpu3giu': {
      'en': 'Label here...',
      'ar': '',
    },
    'uk4jaios': {
      'en': 'Search',
      'ar': 'ابحث',
    },
    '83ceoxpj': {
      'en': 'Start ',
      'ar': 'يبدا',
    },
    '3s19271w': {
      'en': ':',
      'ar': '',
    },
    '8qxmcmuz': {
      'en': 'End',
      'ar': 'ينتهي',
    },
    '4wzt5aq0': {
      'en': ':',
      'ar': '',
    },
    'fo82k3ye': {
      'en': 'Edit',
      'ar': 'تعديل',
    },
    'rz0jtbvt': {
      'en': 'Add tournaments',
      'ar': 'اضافة البطولات',
    },
    '0eem94dk': {
      'en': 'sssss',
      'ar': '',
    },
  },
  // editTournament
  {
    'kvwhok8x': {
      'en': 'Start  ',
      'ar': 'يبدأ  ',
    },
    'f6spt5wi': {
      'en': 'End  ',
      'ar': 'ينتهي  ',
    },
    'bg1k721a': {
      'en': 'Name',
      'ar': 'الاسم',
    },
    'd95my35x': {
      'en': 'Arabic name',
      'ar': 'الاسم العربي',
    },
    '1x9pq2xi': {
      'en': 'Settings',
      'ar': 'الاعدادات',
    },
    'i2ipsqv6': {
      'en': 'Match ends with',
      'ar': 'تنتهي المباراة بـ',
    },
    'qiuzq3eq': {
      'en': 'Full time',
      'ar': 'الأشواط الاصلية',
    },
    'dgnxn298': {
      'en': 'Extra time',
      'ar': 'الاشواط الاضافية',
    },
    'oli5pbtc': {
      'en': 'Penalty',
      'ar': 'ركلات الترجيح',
    },
    'q2azmcjj': {
      'en': 'Please select...',
      'ar': '',
    },
    'ttf27iaz': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'tct5lfb5': {
      'en': 'If home team win',
      'ar': 'إذا فاز الفريق المضيف',
    },
    'qm89qs5t': {
      'en': 'Score points if correct',
      'ar': 'يحصل على النقاط لو صحيح',
    },
    'patxh0oa': {
      'en': 'If away team win',
      'ar': 'إذا فاز الفريق الضيف',
    },
    'g41rhlf9': {
      'en': 'Score points if correct',
      'ar': 'يحصل على النقاط لو صحيح',
    },
    'snz2icne': {
      'en': 'If the two teams draw',
      'ar': 'اذا تعادل الفريقين',
    },
    'z0vng7sb': {
      'en': 'Score points if correct',
      'ar': 'يحصل على النقاط لو صحيح',
    },
    'bd9m8es7': {
      'en': 'Goals of the home team',
      'ar': 'اذا توقع اهداف الفريق المضيف',
    },
    'eraq8klp': {
      'en': 'Score points if correct',
      'ar': 'يحصل على النقاط لو صحيح',
    },
    'c3qdsggm': {
      'en': 'Goals of the away team',
      'ar': 'اذا توقع اهداف الفريق الضيف',
    },
    '7bs6t5wt': {
      'en': 'Score points if correct',
      'ar': 'يحصل على النقاط لو صحيح',
    },
    '4q1s3unj': {
      'en': 'Save modifications',
      'ar': 'حفظ التعديلات',
    },
    'atie4ev6': {
      'en': 'Edit tournament',
      'ar': 'تعديل البطولة',
    },
    'qyef2onu': {
      'en': 'Home',
      'ar': '',
    },
  },
  // addTournaments
  {
    'j22yf5x1': {
      'en': 'Please select...',
      'ar': '',
    },
    'd9o0icap': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'p6s8qrnw': {
      'en': '2022',
      'ar': '2022',
    },
    '9j5e0jw2': {
      'en': '2023',
      'ar': '2023',
    },
    '6wz68jxq': {
      'en': '2024',
      'ar': '2024',
    },
    'laakpi75': {
      'en': '2025',
      'ar': '2025',
    },
    'ov1im916': {
      'en': '2026',
      'ar': '2026',
    },
    '4apdi7vt': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'ggbdn9a8': {
      'en': 'league',
      'ar': 'دوري',
    },
    'ochabfgk': {
      'en': 'league',
      'ar': 'دوري',
    },
    'xfwglfxm': {
      'en': 'cup',
      'ar': 'كاس',
    },
    'rjc38868': {
      'en': 'Search',
      'ar': 'ابحث',
    },
    'zcw8g8nc': {
      'en': 'Start ',
      'ar': 'يبدا',
    },
    'w1mlr4nz': {
      'en': ':',
      'ar': ':',
    },
    'k6253rno': {
      'en': 'End',
      'ar': 'ينتهي',
    },
    'idarejzq': {
      'en': ':',
      'ar': ':',
    },
    'de1kj3f2': {
      'en': 'Edit',
      'ar': 'تعديل',
    },
    'mftvf5k1': {
      'en': 'Add tournaments',
      'ar': 'اضافة البطولات',
    },
    'qzt5p3cs': {
      'en': 'sssss',
      'ar': '',
    },
  },
  // tournamentsList
  {
    'zkb2el6z': {
      'en': 'add Manual',
      'ar': 'ابحث',
    },
    '15yc9izt': {
      'en': 'addTournaments',
      'ar': 'أضافة البطولات',
    },
    'prhz08ey': {
      'en': 'Start ',
      'ar': 'يبدا',
    },
    '5meqg443': {
      'en': ':',
      'ar': ':',
    },
    'veqbn0b8': {
      'en': 'End',
      'ar': 'ينتهي',
    },
    'nueq4f2a': {
      'en': ':',
      'ar': ':',
    },
    '0imm2xvr': {
      'en': 'Edit',
      'ar': 'تعديل',
    },
    'xwodnklz': {
      'en': 'Add tournaments',
      'ar': 'اضافة البطولات',
    },
    'updbbsy2': {
      'en': '',
      'ar': '',
    },
  },
  // Countries
  {
    'l98zr14w': {
      'en': 'Countries',
      'ar': 'الدول',
    },
    '35u9suoe': {
      'en': 'Home',
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
  // emptyTournamentsList
  {
    'wb6e6exi': {
      'en': 'No new tournaments have been added',
      'ar': 'لا توجد بطولات جديدة قد تم اضافتها ',
    },
    '7w4ux9nz': {
      'en': 'Or it may have been added previously',
      'ar': 'او قد تم اضافتها سابقا',
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
