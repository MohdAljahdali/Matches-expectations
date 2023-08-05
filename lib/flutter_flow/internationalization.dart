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
      'en': 'Profile',
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
      'en': '',
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
    'dgvk0tnk': {
      'en': 'Member',
      'ar': 'الاعضاء',
    },
    'b9axb78m': {
      'en': 'Countries',
      'ar': 'الدول',
    },
    'by4o5ylx': {
      'en': 'Tournaments',
      'ar': 'البطولات',
    },
    'slqr9i0n': {
      'en': 'Matches',
      'ar': 'المباريات',
    },
    'p4z0veqy': {
      'en': 'Admin',
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
  // adminTournamentsAdd
  {
    'bszrb3on': {
      'en': 'Add tournaments by Country',
      'ar': 'اضافة البطولات بكود الدولة',
    },
    'ob6r0xb7': {
      'en': 'Country',
      'ar': 'الدولة',
    },
    'n8gnz9gs': {
      'en': 'Option 1',
      'ar': '',
    },
    'qbimm6nk': {
      'en': 'Country',
      'ar': 'الدولة',
    },
    '3wa7lagy': {
      'en': 'Search for an Country...',
      'ar': 'البحث عن الدولة ...',
    },
    'abaa4ktb': {
      'en': 'Season',
      'ar': 'الموسم',
    },
    '46dmj54o': {
      'en': '2022',
      'ar': '2022',
    },
    'zhnzdd7v': {
      'en': '2023',
      'ar': '2023',
    },
    'vkxd2f0q': {
      'en': '2024',
      'ar': '2024',
    },
    'z0b7l9r1': {
      'en': '2025',
      'ar': '2025',
    },
    'afpdh0u9': {
      'en': '2026',
      'ar': '2026',
    },
    'tqngvb78': {
      'en': '2027',
      'ar': '2027',
    },
    'mng90tob': {
      'en': 'Please select...',
      'ar': '',
    },
    'nbwl5xx3': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'ih6jxsam': {
      'en': 'Add',
      'ar': 'أضف',
    },
    'eqcxp81l': {
      'en': 'Add tournament manually',
      'ar': 'أضافة البطولة يدوي',
    },
    '7ofp8xgw': {
      'en': 'Tournament code',
      'ar': 'كود البطولة',
    },
    'kf16ohp6': {
      'en': 'Season',
      'ar': 'الموسم',
    },
    'yq4t38v3': {
      'en': '2022',
      'ar': '2022',
    },
    '8qof8sh2': {
      'en': '2023',
      'ar': '2023',
    },
    'xlzcv3l0': {
      'en': '2024',
      'ar': '2024',
    },
    'tiwt3n4e': {
      'en': '2025',
      'ar': '2025',
    },
    'nezr3a05': {
      'en': '2026',
      'ar': '2026',
    },
    'add9y9kp': {
      'en': '2027',
      'ar': '2027',
    },
    '3034jjzm': {
      'en': 'Please select...',
      'ar': '',
    },
    'buic52h2': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'ic8c9grk': {
      'en': 'Add',
      'ar': 'أضف',
    },
    'rcrsp1mh': {
      'en': 'Add tournaments',
      'ar': 'أضافة بطولات',
    },
    'z72dk26j': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminTournamentsList
  {
    '6yy6pbye': {
      'en': 'Season',
      'ar': 'الموسم',
    },
    'vqdi7gj1': {
      'en': ' : ',
      'ar': ' : ',
    },
    '35vlaenp': {
      'en': 'Type',
      'ar': 'نوع',
    },
    'epxlvliy': {
      'en': ' : ',
      'ar': ' : ',
    },
    'ejatipx8': {
      'en': 'Tournaments list',
      'ar': 'أضافة بطولات',
    },
    'ufe43z3x': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminTournamentEdit
  {
    'qy2x0tb8': {
      'en': 'Logo URL',
      'ar': 'رابط الشعار',
    },
    'fc2ssg9i': {
      'en': 'English name',
      'ar': 'الاسم بالانجليزية',
    },
    'rl2uu226': {
      'en': 'Arabic name',
      'ar': 'الاسم بالعربية',
    },
    'u03nts7r': {
      'en': 'Tournament is active',
      'ar': 'البطولة نشطة',
    },
    '5qirfox3': {
      'en': 'Activate the double feature',
      'ar': 'تفعيل خاصية الدبل في البطولة',
    },
    'idiur6rq': {
      'en': 'If home team win',
      'ar': 'في حال فوز فريق المضيف',
    },
    '7gc651ds': {
      'en': 'Points',
      'ar': 'النقاط',
    },
    '0fegv2l9': {
      'en': 'If away team win',
      'ar': 'في حال فوز فريق الضيف',
    },
    'yzvs45da': {
      'en': 'Points',
      'ar': 'النقاط',
    },
    '5mfqh6jg': {
      'en': 'If two teams draw',
      'ar': 'في حال تعادل الفريقين',
    },
    'ubzt7pmb': {
      'en': 'Points',
      'ar': 'النقاط',
    },
    'kz8nzg79': {
      'en': 'Anticipate the goals of home team',
      'ar': 'في حال توقع اهداف الفريق المضيف',
    },
    'hac9916b': {
      'en': 'Points',
      'ar': 'النقاط',
    },
    'mxucrqvf': {
      'en': 'Anticipate the goals of away team',
      'ar': 'في حال توقع اهداف الفريق المضيف',
    },
    '1hu8vhep': {
      'en': 'Points',
      'ar': 'النقاط',
    },
    'yv80clto': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8hejdzei': {
      'en': '',
      'ar': '',
    },
    '0snn3630': {
      'en': 'Mxnimum 25 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    '871a5q75': {
      'en': 'Invalid Email Format',
      'ar': 'تنسيق بريد إلكتروني غير صالح',
    },
    'g762vob0': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '1cfutcw8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'lrxeuh42': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    '2egpjzu3': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'mbg2xf9a': {
      'en':
          'at least one uppercase letter, one lowercase letter and one number',
      'ar': 'حرف كبير واحد على الأقل وحرف صغير واحد ورقم واحد',
    },
    'odnod4tx': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'vznxfbgi': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'h41u0x8r': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    'udn92x6q': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'tct83x5j': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ynx0ju2c': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0qgolyjv': {
      'en': 'Minimum 8 characters',
      'ar': '8 أحرف على الأقل',
    },
    'y3gpvlzp': {
      'en': 'Mxnimum 20 characters',
      'ar': '20 حرفًا بحد أقصى',
    },
    'amcnjcs5': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'zdwcvv5d': {
      'en': 'Save your edite',
      'ar': 'حفظ التعديل',
    },
    'ldnybeqm': {
      'en': 'Edit Member',
      'ar': 'تعديل بيانات العضو',
    },
    'i5sbvbml': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminMatchesAdd
  {
    'vrmd6yg3': {
      'en': 'Add tgdgdgdg',
      'ar': 'أضافة بطولات',
    },
    'vgjc2hju': {
      'en': 'Choose the tournament',
      'ar': 'قم باختيار البطولة',
    },
    'c55ift8b': {
      'en': 'Pro League',
      'ar': '',
    },
    'd11nujaz': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'wc9u701e': {
      'en': 'Start Date',
      'ar': 'تاريخ البداية',
    },
    'ex2yq1ud': {
      'en': '',
      'ar': '',
    },
    'vzmt93yy': {
      'en': 'Match status',
      'ar': 'حالة المباراة',
    },
    'tn5khx4q': {
      'en': '',
      'ar': '',
    },
    'np4ecc0g': {
      'en': 'Not Started\t',
      'ar': 'لم تبدأ بعد',
    },
    'ankhvcp5': {
      'en': 'Time To Be Defined\t',
      'ar': 'لم يتم تحديد التاريخ بعد',
    },
    'sn1cq8qp': {
      'en': 'In Play\t',
      'ar': 'قيد اللعب',
    },
    'xevr2dlv': {
      'en': 'Match Finished\t',
      'ar': 'انتهت المباراة',
    },
    'loeeo95m': {
      'en': 'Match Postponed\t',
      'ar': 'المباراة مؤجلة',
    },
    '6g0lgu0j': {
      'en': 'Match Cancelled\t',
      'ar': 'تم إلغاء المباراة',
    },
    'zdq6za3c': {
      'en': 'Match Abandoned\t',
      'ar': 'تم التخلي عن المباراة',
    },
    'zou9ptyn': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'c521ruo7': {
      'en': 'Add new matches',
      'ar': 'إضافة مباريات جديدة',
    },
    'udhuh86e': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminMatchesList
  {
    '6ntnbgwr': {
      'en': 'Please select',
      'ar': 'قم باختيار البطولة',
    },
    'jfft6eb0': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'n255kbji': {
      'en': 'VS',
      'ar': 'VS',
    },
    'm6ug5u60': {
      'en': 'X2',
      'ar': 'X2',
    },
    'ot6fplxv': {
      'en': 'X1',
      'ar': 'X1',
    },
    'huegtbor': {
      'en': '',
      'ar': '',
    },
    '2pn1rfdc': {
      'en': '',
      'ar': '',
    },
    'ozjcfion': {
      'en': 'List of matches not started',
      'ar': 'قائمة المباريات التي لم تبداء',
    },
    '30d15deu': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminTournamentsAddList
  {
    '6t2porny': {
      'en': 'Season',
      'ar': 'الموسم',
    },
    'ybwkr7al': {
      'en': ' : ',
      'ar': ' : ',
    },
    '4qj0cg42': {
      'en': 'Type',
      'ar': 'نوع',
    },
    'ntmpogwb': {
      'en': ' : ',
      'ar': ' : ',
    },
    'xyzyymxk': {
      'en': 'Tournaments list',
      'ar': 'أضافة بطولات',
    },
    'jtt8xl2e': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminTournamentsTeamList
  {
    'ak5ui8se': {
      'en': 'Country',
      'ar': 'الدولة',
    },
    'to40qi32': {
      'en': ' : ',
      'ar': ' : ',
    },
    'rorq2dwr': {
      'en': 'Code',
      'ar': 'الكود',
    },
    '2231ob8a': {
      'en': ' : ',
      'ar': ' : ',
    },
    'yv9ev3dd': {
      'en': 'Tournaments list',
      'ar': 'أضافة بطولات',
    },
    'of60y6ak': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminTournamentTeamEdit
  {
    't4v1biy8': {
      'en': 'Logo URL',
      'ar': 'رابط الشعار',
    },
    'xqxrs7f1': {
      'en': 'English name',
      'ar': 'الاسم بالانجليزية',
    },
    'u5zu4hh1': {
      'en': 'Arabic name',
      'ar': 'الاسم بالعربية',
    },
    'pvg3ncvx': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    't1dy8lak': {
      'en': '',
      'ar': '',
    },
    'n6ztrp2f': {
      'en': 'Mxnimum 25 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'iqud55p2': {
      'en': 'Invalid Email Format',
      'ar': 'تنسيق بريد إلكتروني غير صالح',
    },
    'to0ga9zq': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'rxociyvn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'wmtc4wr8': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    'eqo39n1v': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'f8yomldh': {
      'en':
          'at least one uppercase letter, one lowercase letter and one number',
      'ar': 'حرف كبير واحد على الأقل وحرف صغير واحد ورقم واحد',
    },
    'vvhlhhrc': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '1r9v95o4': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8b5i7tep': {
      'en': 'Minimum eight characters',
      'ar': 'ثمانية أحرف على الأقل',
    },
    'qo79t2dg': {
      'en': 'Mxnimum 16 characters',
      'ar': 'الحد الأقصى 16 حرفًا',
    },
    'lmdk0qqr': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'khm303u7': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yxn4aoad': {
      'en': 'Minimum 8 characters',
      'ar': '8 أحرف على الأقل',
    },
    'rjwpnvif': {
      'en': 'Mxnimum 20 characters',
      'ar': '20 حرفًا بحد أقصى',
    },
    '4hu02ru2': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '13bt70nb': {
      'en': 'Save your edite',
      'ar': 'حفظ التعديل',
    },
    'bvnaypq1': {
      'en': 'Edit Teams',
      'ar': 'تعديل بيانات الفريق',
    },
    'zhv19kdu': {
      'en': 'Home',
      'ar': '',
    },
  },
  // adminMatchesAddList
  {
    'er7if1v5': {
      'en': 'VS',
      'ar': '',
    },
    'uholnyyb': {
      'en': 'X2',
      'ar': 'X2',
    },
    'a162x0oc': {
      'en': 'X1',
      'ar': 'X1',
    },
    '8pptt67c': {
      'en': '',
      'ar': '',
    },
    'sxkd4w6h': {
      'en': '',
      'ar': '',
    },
    'zt2c2utm': {
      'en': 'List of matches added',
      'ar': 'قائمة المباريات المظافة',
    },
    'uif33elr': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Home
  {
    'jytml6rk': {
      'en': 'Hello World',
      'ar': '',
    },
    'kv444ek0': {
      'en': 'A',
      'ar': '',
    },
    'tmzg7unc': {
      'en': 'A',
      'ar': '',
    },
    'lhopuwtx': {
      'en': '2',
      'ar': '',
    },
    'fjk1p3jb': {
      'en': '0',
      'ar': '',
    },
    'nm5ooy78': {
      'en': '2',
      'ar': '',
    },
    'qncd93ik': {
      'en': 'Home',
      'ar': 'الرئسية',
    },
  },
  // HomeCopy
  {
    '35gohpla': {
      'en': 'Home',
      'ar': 'الرئسية',
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
  // adminMatchesFilterC
  {
    'q2bo1n4b': {
      'en': 'Right Click Options',
      'ar': '',
    },
    '6kmyuvx3': {
      'en': 'Option 1',
      'ar': '',
    },
    'g57q8pvc': {
      'en': 'HFGHDSA',
      'ar': '',
    },
    'z6ukbbdp': {
      'en': 'HFGH',
      'ar': '',
    },
    'j671u7eg': {
      'en': 'HFGHDSA',
      'ar': '',
    },
    'vflsgffh': {
      'en': 'Option 1',
      'ar': '',
    },
    'a1odcxkl': {
      'en': 'Matches is active',
      'ar': 'هل المباريات نشطة',
    },
    'tu0t4jj3': {
      'en': 'Matches is Double',
      'ar': 'هل المباريات دبل النقاط',
    },
    '4z49z2ay': {
      'en': 'Show results',
      'ar': 'عرض النتائج',
    },
    'o4srtq1x': {
      'en': 'Clean',
      'ar': 'مسح',
    },
  },
  // addPrediction
  {
    'oghlwmr4': {
      'en': 'Add your prediction',
      'ar': 'أضف توقعك',
    },
    'pshu7dgm': {
      'en': 'Add',
      'ar': 'أضف',
    },
  },
  // editPrediction
  {
    'jqnqd5t2': {
      'en': 'Edit your prediction',
      'ar': ' عدل توقعك للمبارة',
    },
    'lqufqdff': {
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
    'ot7ifas2': {
      'en': '',
      'ar': '',
    },
    'dxi3vyr9': {
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
