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
  // Home
  {
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
    'ewzyprlm': {
      'en': 'Edit profile',
      'ar': 'تعديل الملف الشخصي',
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
      'en': 'Edit profile',
      'ar': 'تعديل الملف الشخصي',
    },
    '0436g3zd': {
      'en': '',
      'ar': '',
    },
    '7d1kl9mn': {
      'en': 'Change password',
      'ar': 'تغير كلمة المرور',
    },
    '0x5r2iwu': {
      'en': '',
      'ar': '',
    },
    '5byhc1ud': {
      'en': '',
      'ar': '',
    },
  },
  // entryPage
  {
    'ha1gkwsn': {
      'en': 'Welcome',
      'ar': 'مرحباً',
    },
    'oqnysxcu': {
      'en':
          'It is a special application for a group of members for predictions of football leagues',
      'ar': 'إنه تطبيق خاص لمجموعة من الأعضاء لتوقعات بطولات كرة القدم ',
    },
    '8p88wry2': {
      'en': 'Sign in',
      'ar': 'تسجيل الدخول',
    },
    'e5cgopxs': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
    },
    '7rm1pj5j': {
      'en': 'Home',
      'ar': '',
    },
  },
  // signUpPage
  {
    'j4wlfa65': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '7e4rd28f': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'mky5u79j': {
      'en': 'Confirm password',
      'ar': 'تأكيد كلمة المرور',
    },
    'dbqdipgd': {
      'en': 'Name',
      'ar': 'الاسم',
    },
    '22j3ui4l': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '3yinku0m': {
      'en': '',
      'ar': '',
    },
    'hydfltv0': {
      'en': 'Mxnimum 25 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'yysleihy': {
      'en': 'Invalid Email Format',
      'ar': 'تنسيق بريد إلكتروني غير صالح',
    },
    '0yso3w3s': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'sxkpxeba': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2hp7thhe': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    '96vvfkr1': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'jom40mdk': {
      'en':
          'at least one uppercase letter, one lowercase letter and one number',
      'ar': 'حرف كبير واحد وحرف صغير واحد ورقم واحد على الأقل ',
    },
    '9d4y9nyv': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'nw42vjzg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'kpcvgy14': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    'iww0teue': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'x2bs1vlm': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '2uq34y9h': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rzmtblbn': {
      'en': 'Minimum 8 characters',
      'ar': '8 أحرف على الأقل',
    },
    'u4tx38fa': {
      'en': 'Mxnimum 20 characters',
      'ar': '20 حرفًا بحد أقصى',
    },
    'l4tb0tve': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '1d9wi9s8': {
      'en': 'Sign Up new user',
      'ar': 'تسجيل مستخدم جديد',
    },
    'qqda0tvh': {
      'en': 'Register a new user',
      'ar': 'تسجيل عضوية جديدة',
    },
    'uluqornx': {
      'en': 'Home',
      'ar': '',
    },
  },
  // editProfile
  {
    '90twvsq1': {
      'en': 'Name',
      'ar': 'الاسم',
    },
    '661u79xd': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'm6a0hg7h': {
      'en': '',
      'ar': '',
    },
    '0k0ifeqs': {
      'en': 'Mxnimum 25 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    '2hspnzkb': {
      'en': 'Invalid Email Format',
      'ar': 'تنسيق بريد إلكتروني غير صالح',
    },
    'n841b0qe': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '7h85spik': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'i74q9qp4': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    '91se0fw8': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'i0mlfdry': {
      'en':
          'at least one uppercase letter, one lowercase letter and one number',
      'ar': 'حرف كبير واحد على الأقل وحرف صغير واحد ورقم واحد',
    },
    '07qr7k4p': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ae1v9d0y': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xytg7ob5': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    'wasx76m3': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'sqi6hjhu': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'swvpiwrg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gnxp4lm4': {
      'en': 'Minimum 8 characters',
      'ar': '8 أحرف على الأقل',
    },
    'x214pqk0': {
      'en': 'Mxnimum 20 characters',
      'ar': '20 حرفًا بحد أقصى',
    },
    'zu0k0veb': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'xtovmyqt': {
      'en': 'Save your edite',
      'ar': 'حفظ التعديل',
    },
    '7obxr4eb': {
      'en': 'Edit profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'oda98gpe': {
      'en': 'Home',
      'ar': '',
    },
  },
  // updatePassword
  {
    'z5jmjhdy': {
      'en': 'Old password',
      'ar': 'كلمة المرور القديمة',
    },
    'm91f1eam': {
      'en': 'New password',
      'ar': 'كلمة المرور الجديدة',
    },
    'jbtxbxar': {
      'en': 'Confirm password',
      'ar': 'تاكيد كلمة  المرور',
    },
    'ohblzfaf': {
      'en': 'Field is required',
      'ar': '',
    },
    'ejq7wkia': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'h1hvy212': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ovg5styg': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    '206so7dm': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    '1laxp3d3': {
      'en':
          'at least one uppercase letter, one lowercase letter and one number',
      'ar': 'حرف كبير واحد وحرف صغير واحد ورقم واحد على الأقل',
    },
    'dhg6l8p5': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'rumk776v': {
      'en': 'Field is required',
      'ar': '',
    },
    '5xqdoeeo': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'mkqlx0hz': {
      'en': 'Change new password',
      'ar': 'تغير كلمة المرور الجديدة',
    },
    '9u6ayeru': {
      'en': 'Change password',
      'ar': 'تغير الرقم السري',
    },
    'x5nhqrd3': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminPage
  {
    'g68blc5o': {
      'en': 'Admin control',
      'ar': 'تحكم الاداري',
    },
    '8n30lm2h': {
      'en': 'Log out',
      'ar': 'تسجيل خروج',
    },
    'zihcwu0d': {
      'en': 'Profile',
      'ar': 'الملف الشخصي',
    },
    'a6cbyqq4': {
      'en': 'Members',
      'ar': 'الأعضاء',
    },
    'a7ne7km4': {
      'en': '',
      'ar': '',
    },
    'ru4og5w1': {
      'en': 'Countries',
      'ar': 'الدول',
    },
    'c2lqul1g': {
      'en': '',
      'ar': '',
    },
    'p4z0veqy': {
      'en': '',
      'ar': '',
    },
  },
  // adminMembers
  {
    'yyt6gev0': {
      'en': 'Edit',
      'ar': 'تعديل',
    },
    'abwl4kbp': {
      'en': 'Edit profile',
      'ar': 'تعديل الملف الشخصي',
    },
    '062svchd': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminEditMember
  {
    'focov9ky': {
      'en': 'Name',
      'ar': 'الاسم',
    },
    '76hkg0yd': {
      'en': 'Save your edite',
      'ar': 'حفظ التعديل',
    },
    'qifu6l25': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gzvnfkhm': {
      'en': '',
      'ar': '',
    },
    '2x390i6z': {
      'en': 'Mxnimum 25 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'jveqdyft': {
      'en': 'Invalid Email Format',
      'ar': 'تنسيق بريد إلكتروني غير صالح',
    },
    'b293909w': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '6bspw134': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7x4c3g3j': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    '43dhd8om': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'aoho5odh': {
      'en':
          'at least one uppercase letter, one lowercase letter and one number',
      'ar': 'حرف كبير واحد على الأقل وحرف صغير واحد ورقم واحد',
    },
    'y66fb0ol': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '70ckzccr': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9zieejrn': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    'gytp1yha': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'e20g6vo4': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'wq9mpr3b': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7gcas2ae': {
      'en': 'Minimum 8 characters',
      'ar': '8 أحرف على الأقل',
    },
    'fx6uizrp': {
      'en': 'Mxnimum 20 characters',
      'ar': '20 حرفًا بحد أقصى',
    },
    'a4wljn4x': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '4mv9s4ih': {
      'en': 'Edit Member',
      'ar': 'تعديل بيانات العضو',
    },
    'z4hfyabm': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminCountriesList
  {
    'rjwugg1n': {
      'en': 'Countries List',
      'ar': 'قائمة الدول',
    },
    'l2v96hef': {
      'en': 'Home',
      'ar': '',
    },
  },
  // signInComponent
  {
    '73htmsl1': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    'hu4hv7qb': {
      'en': 'Email',
      'ar': 'البريد الالكتروني',
    },
    '431ds5c7': {
      'en': 'mohd.aljahdali@gmail.com',
      'ar': '',
    },
    '350x7yti': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'nwsf5k6z': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    '9pmnm3ja': {
      'en': 'Forgot your password ',
      'ar': 'نسيت كلمة المرور',
    },
  },
  // adminCountriesEidt
  {
    'qjluq91b': {
      'en': 'English name',
      'ar': 'الاسم الانجليزي',
    },
    'aytsfecw': {
      'en': 'Arabic name',
      'ar': 'الاسم العربي',
    },
    'udzy0oqe': {
      'en': 'Active country',
      'ar': 'تفعيل الدولة',
    },
    'zq3juaox': {
      'en': 'Edit',
      'ar': 'تعديل',
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
      'en': 'Invalid file format',
      'ar': 'تنسيق ملف غير صالح',
    },
    'y4vkdd6m': {
      'en': 'Uploading File',
      'ar': 'تحميل الملف',
    },
    'nd0vx833': {
      'en': ' Success',
      'ar': 'نجاح',
    },
    '6sqqp824': {
      'en': 'Failed to upload data ',
      'ar': 'فشل تحميل البيانات',
    },
    'u8v02bec': {
      'en': '',
      'ar': '',
    },
    'rlv7863u': {
      'en': 'Choose source',
      'ar': 'اختر المصدر',
    },
    '1gp8ulqa': {
      'en': 'Gallery',
      'ar': 'معرض',
    },
    'mzm4q5me': {
      'en': 'Gallery (Photo)',
      'ar': 'معرض (صور)',
    },
    's6pv9qpd': {
      'en': 'Gallery (Video)',
      'ar': 'معرض (فيديو)',
    },
    'szogxh1r': {
      'en': 'Camera',
      'ar': 'الكاميرا',
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
