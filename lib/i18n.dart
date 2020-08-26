import 'package:Herald_flutter/redux/state/interface_settings_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'extensions.dart';

class HeraldLocalizationsDelegate
    extends LocalizationsDelegate<HeraldLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return HeraldLocalizations.supportedLocales.contains(locale.languageCode);
  }

  @override
  Future<HeraldLocalizations> load(Locale locale) {
    return SynchronousFuture<HeraldLocalizations>(
        HeraldLocalizations(Locale('ru'), locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<HeraldLocalizations> old) {
    return false;
  }
}

class HeraldLocalizations {
  final Locale locale;
  final Locale _defaultLocale;
  DateFormat _dateFormat;
  DateFormat _timeFormat;

  HeraldLocalizations(this._defaultLocale, this.locale) {
    _dateFormat = DateFormat.yMd();
    _timeFormat = DateFormat.Hm();
  }

  static HeraldLocalizations of(BuildContext context) {
    return Localizations.of<HeraldLocalizations>(context, HeraldLocalizations);
  }

  static final Map<String, Map<Keys, String>> _localizationMap = {
    'en': {
      Keys.TITLE: 'Herald',
      Keys.DEPART_STATION: 'Depart station',
      Keys.ARRIVE_STATION: 'Arrive station',
      Keys.SEARCH: 'Search',
      Keys.SETTINGS: 'Settings',
      Keys.INTERFACE_SETTINGS: 'Interface settings',
      Keys.BEHAVIOR_SETTINGS: 'Behavior settings',
      Keys.ABOUT_APP: 'About',
      Keys.FEEDBACK: 'Feedback',
      Keys.DARK_THEME: 'Dark theme',
      Keys.SITTING_SEAT: 'Sitting seat',
      Keys.RESERVED_SEAT: 'Reserved seat',
      Keys.COMPARTMENT: 'Compartment',
      Keys.SV: 'SV',
      Keys.LANGUAGE: 'Language',
      Keys.LANGUAGE_NAME: 'English',
      Keys.CLOSE: 'Close',
      Keys.COMING_SOON: 'Coming soon',
      Keys.COMING_SOON_DESCRIPTION: 'This functionality still not implemented',
      Keys.APP_DESCRIPTION: 'Herald - simple application for searching trains schedule.',
      Keys.SOURCE_CODE_DESCRIPTION: 'Source code of application available on https://github.com/fekz115/Herald_flutter',
      Keys.INFORMATION_SOURCE: 'Information taken from https://www.rw.by ',
      Keys.FLUTTER_POWERED: 'Powered by Flutter',
      Keys.HOURS: 'h',
      Keys.MINUTES: 'min',
      Keys.CURRENCY_DISPLAYING_MODE: 'Currency displaying',
      Keys.CURRENCY_DISPLAY_SYMBOL: 'Icon',
      Keys.CURRENCY_DISPLAY_ISO: 'ISO',
      Keys.CURRENCY_DISPLAY_NAME: 'Name',
      Keys.CURRENCY: 'Currency',
      Keys.CURRENCY_BYN: 'BYN',
      Keys.CURRENCY_EUR: 'EUR',
      Keys.CURRENCY_RUB: 'RUB',
      Keys.CURRENCY_USD: 'USD',
    },
    'ru': {
      Keys.TITLE: 'Herald',
      Keys.DEPART_STATION: 'Станция отправления',
      Keys.ARRIVE_STATION: 'Станция назначения',
      Keys.SEARCH: 'Поиск',
      Keys.SETTINGS: 'Настройки',
      Keys.INTERFACE_SETTINGS: 'Настройки интерфейса',
      Keys.BEHAVIOR_SETTINGS: 'Настройки поведения',
      Keys.ABOUT_APP: 'О приложении',
      Keys.FEEDBACK: 'Обратная связь',
      Keys.DARK_THEME: 'Темная тема',
      Keys.SITTING_SEAT: 'Сидячее',
      Keys.RESERVED_SEAT: 'Плацкарт',
      Keys.COMPARTMENT: 'Купе',
      Keys.SV: 'СВ',
      Keys.LANGUAGE: 'Язык',
      Keys.LANGUAGE_NAME: 'Русский',
      Keys.CLOSE: 'Закрыть',
      Keys.COMING_SOON: 'Скоро появится',
      Keys.COMING_SOON_DESCRIPTION: 'Данный функционал еще не реализован',
      Keys.APP_DESCRIPTION: 'Herald - приложение для получения информации о расписании поездов.',
      Keys.SOURCE_CODE_DESCRIPTION: 'Исходный код приложения доступен по ссылке https://github.com/fekz115/Herald_flutter',
      Keys.INFORMATION_SOURCE: 'Информация о расписании взята с сайта https://www.rw.by/',
      Keys.FLUTTER_POWERED: 'Основано на фреймворке Flutter.',
      Keys.HOURS: 'ч',
      Keys.MINUTES: 'мин',
      Keys.CURRENCY_DISPLAYING_MODE: 'Отображение валюты',
      Keys.CURRENCY_DISPLAY_SYMBOL: 'Иконка',
      Keys.CURRENCY_DISPLAY_ISO: 'Международное название',
      Keys.CURRENCY_DISPLAY_NAME: 'Название',
      Keys.CURRENCY: 'Валюта',
      Keys.CURRENCY_BYN: 'Белорусский рубль',
      Keys.CURRENCY_EUR: 'Евро',
      Keys.CURRENCY_RUB: 'Российский рубль',
      Keys.CURRENCY_USD: 'Доллар',
    },
  };

  static final _currencyCostMap = {
    'en': {
      Currency.BYN: 'byn',
      Currency.USD: 'usd',
      Currency.RUB: 'rub',
      Currency.EUR: 'eur',
    },
    'ru': {
      Currency.BYN: 'руб.',
      Currency.USD: 'дол.',
      Currency.RUB: 'руб.',
      Currency.EUR: 'евро',
    },
  };

  static final _currencyNameMap = {
      Currency.BYN: Keys.CURRENCY_BYN,
      Currency.USD: Keys.CURRENCY_USD,
      Currency.RUB: Keys.CURRENCY_RUB,
      Currency.EUR: Keys.CURRENCY_EUR,
  };

  static final _currencyDisplayingModeMap = {
    CurrencyDisplaying.LOCAL_NAME: Keys.CURRENCY_DISPLAY_NAME,
    CurrencyDisplaying.ISO: Keys.CURRENCY_DISPLAY_ISO,
    CurrencyDisplaying.ICON: Keys.CURRENCY_DISPLAY_SYMBOL,
  };

  static Iterable<String> get supportedLocales => _localizationMap.keys;
  static Map<String, String> get localesNames => _localizationMap.map((x, y) => MapEntry(x, y[Keys.LANGUAGE_NAME]));

  String get title => _getValue(Keys.TITLE);
  String get arriveStation => _getValue(Keys.ARRIVE_STATION);
  String get departStation => _getValue(Keys.DEPART_STATION);
  String get search => _getValue(Keys.SEARCH);
  String get settings => _getValue(Keys.SETTINGS);
  String get interfaceSettings => _getValue(Keys.INTERFACE_SETTINGS);
  String get behaviorSettings => _getValue(Keys.BEHAVIOR_SETTINGS);
  String get aboutApp => _getValue(Keys.ABOUT_APP);
  String get feedback => _getValue(Keys.FEEDBACK);
  String get darkTheme => _getValue(Keys.DARK_THEME);
  String get sittingSeat => _getValue(Keys.SITTING_SEAT);
  String get reservedSeat => _getValue(Keys.RESERVED_SEAT);
  String get compartment => _getValue(Keys.COMPARTMENT);
  String get sv => _getValue(Keys.SV);
  String get language => _getValue(Keys.LANGUAGE);
  String get languageName => _getValue(Keys.LANGUAGE_NAME);
  String get close => _getValue(Keys.CLOSE);
  String get comingSoon => _getValue(Keys.COMING_SOON);
  String get comingSoonDescription => _getValue(Keys.COMING_SOON_DESCRIPTION);
  String get appDescription => _getValue(Keys.APP_DESCRIPTION);
  String get sourceCodeDescription => _getValue(Keys.SOURCE_CODE_DESCRIPTION);
  String get informationSource => _getValue(Keys.INFORMATION_SOURCE);
  String get flutterPowered => _getValue(Keys.FLUTTER_POWERED);
  String get minutes => _getValue(Keys.MINUTES);
  String get hours => _getValue(Keys.HOURS);
  String get currencyDisplaySymbol => _getValue(Keys.CURRENCY_DISPLAY_SYMBOL);
  String get currencyDisplayName => _getValue(Keys.CURRENCY_DISPLAY_NAME);
  String get currencyDisplayISO => _getValue(Keys.CURRENCY_DISPLAY_ISO);
  String get currencyDisplayMode => _getValue(Keys.CURRENCY_DISPLAYING_MODE);
  String get currency => _getValue(Keys.CURRENCY);

  DateFormat get timeFormat => _timeFormat;
  DateFormat get dateFormat => _dateFormat;

  String formatDuration(Duration d) {
    return d.toStringOnlyHM(hours, minutes);
  }

  String getCurrencyCost(Currency currency) =>
      _currencyCostMap[locale.languageCode][currency] ??
      _currencyCostMap[_defaultLocale.languageCode][currency];

  String getCurrencyName(Currency currency) => _getValue(_getCurrencyName(currency));
  String getCurrencyDisplayingModeName(CurrencyDisplaying currencyDisplaying) => _getValue(_getCurrencyDisplayingModeName(currencyDisplaying));

  Keys _getCurrencyName(Currency currency) => _currencyNameMap[currency];
  Keys _getCurrencyDisplayingModeName(CurrencyDisplaying currencyDisplaying) => _currencyDisplayingModeMap[currencyDisplaying];

  String _getValue(Keys key) =>
      _localizationMap[locale.languageCode][key] ??
      _localizationMap[_defaultLocale.languageCode][key];
}

enum Keys {
  TITLE,
  LANGUAGE,
  LANGUAGE_NAME,
  DEPART_STATION,
  ARRIVE_STATION,
  SEARCH,
  SETTINGS,
  INTERFACE_SETTINGS,
  BEHAVIOR_SETTINGS,
  ABOUT_APP,
  FEEDBACK,
  DARK_THEME,
  SITTING_SEAT,
  RESERVED_SEAT,
  COMPARTMENT,
  SV,
  CLOSE,
  COMING_SOON,
  COMING_SOON_DESCRIPTION,
  APP_DESCRIPTION,
  SOURCE_CODE_DESCRIPTION,
  INFORMATION_SOURCE,
  FLUTTER_POWERED,
  MINUTES,
  HOURS,
  CURRENCY_DISPLAY_NAME,
  CURRENCY_DISPLAY_ISO,
  CURRENCY_DISPLAY_SYMBOL,
  CURRENCY_DISPLAYING_MODE,
  CURRENCY,
  CURRENCY_BYN,
  CURRENCY_RUB,
  CURRENCY_EUR,
  CURRENCY_USD,
}
