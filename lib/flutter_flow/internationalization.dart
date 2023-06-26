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
      'en': 'Edit profile',
      'ar': 'تعديل الملف الشخصي',
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
      'ar': 'حرف كبير واحد على الأقل وحرف صغير واحد ورقم واحد',
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
