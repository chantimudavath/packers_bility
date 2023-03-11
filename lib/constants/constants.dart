
enum Languages {
  afrikkans,
  arabic,
  bengali,
  chinese,
  croatian,
  dutch,
  english,
  filipino,
  finnish,
  french,
  german,
  greek,
  gujarati,
  hausa,
  hebrew,
  hindi,
  hungarian,
  icelandic,
  indonesia,
  irish,
  italian,
  japanese,
  javanese,
  kannada,
  korean,
  malay,
  malayalam,
  marathi,
  nepali,
  norwegian,
  oriya,
  persian,
  polish,
  portuguese,
  punjabi,
  romanian,
  russian,
  sindhi,
  sinhala,
  spanish,
  swahili,
  swedish,
  tamil,
  telugu,
  thai,
  turkish,
  ukranian,
  urdu,
  vietlanguageNamese,
  yoruba
}

extension LanguageUtils on Languages {
  String get value {
    switch (this) {
      case Languages.afrikkans:
        return 'AF';
      case Languages.arabic:
        return 'AR';
      case Languages.bengali:
        return 'BN';
      case Languages.chinese:
        return 'ZH';
      case Languages.croatian:
        return 'HR';
      case Languages.dutch:
        return 'NL';
      case Languages.english:
        return 'EN';
      case Languages.filipino:
        return 'FIL';
      case Languages.finnish:
        return 'FI';
      case Languages.french:
        return 'FR';
      case Languages.german:
        return 'DE';
      case Languages.greek:
        return 'EL';
      case Languages.gujarati:
        return 'GU';
      case Languages.hausa:
        return 'HA';
      case Languages.hebrew:
        return 'HE';
      case Languages.hindi:
        return 'HI';
      case Languages.hungarian:
        return 'HU';
      case Languages.icelandic:
        return 'IS';
      case Languages.indonesia:
        return 'ID';
      case Languages.irish:
        return 'GA';
      case Languages.italian:
        return 'IT';
      case Languages.japanese:
        return 'JA';
      case Languages.javanese:
        return 'JV';
      case Languages.kannada:
        return 'KN';
      case Languages.korean:
        return 'KO';
      case Languages.malay:
        return 'MS';
      case Languages.malayalam:
        return 'ML';
      case Languages.marathi:
        return 'MR';
      case Languages.nepali:
        return 'NE';
      case Languages.norwegian:
        return 'NN';
      case Languages.oriya:
        return 'OR';
      case Languages.persian:
        return 'FA';
      case Languages.polish:
        return 'PL';
      case Languages.portuguese:
        return 'PT';
      case Languages.punjabi:
        return 'PA';
      case Languages.romanian:
        return 'RO';
      case Languages.russian:
        return 'RU';
      case Languages.sindhi:
        return 'SD';
      case Languages.sinhala:
        return 'SI';
      case Languages.spanish:
        return 'ES';
      case Languages.swahili:
        return 'SW';
      case Languages.swedish:
        return 'SV';
      case Languages.tamil:
        return 'TA';
      case Languages.telugu:
        return 'TE';
      case Languages.thai:
        return 'TH';
      case Languages.turkish:
        return 'TR';
      case Languages.ukranian:
        return 'UK';
      case Languages.urdu:
        return 'UR';
      case Languages.vietlanguageNamese:
        return 'VI';
      case Languages.yoruba:
        return 'YO';
    }
    return '';
  }

  String get languageCode {
    switch (this) {
      case Languages.afrikkans:
        return 'af';
      case Languages.arabic:
        return 'ar';
      case Languages.bengali:
        return 'bn';
      case Languages.chinese:
        return 'zh';
      case Languages.croatian:
        return 'hr';
      case Languages.dutch:
        return 'nl';
      case Languages.english:
        return 'en';
      case Languages.filipino:
        return 'fil';
      case Languages.finnish:
        return 'fi';
      case Languages.french:
        return 'fr';
      case Languages.german:
        return 'de';
      case Languages.greek:
        return 'el';
      case Languages.gujarati:
        return 'gu';
      case Languages.hausa:
        return 'ha';
      case Languages.hebrew:
        return 'he';
      case Languages.hindi:
        return 'hi';
      case Languages.hungarian:
        return 'hu';
      case Languages.icelandic:
        return 'is';
      case Languages.indonesia:
        return 'id';
      case Languages.irish:
        return 'ga';
      case Languages.italian:
        return 'it';
      case Languages.japanese:
        return 'ja';
      case Languages.javanese:
        return 'jv';
      case Languages.kannada:
        return 'kn';
      case Languages.korean:
        return 'ko';
      case Languages.malay:
        return 'ms';
      case Languages.malayalam:
        return 'ml';
      case Languages.marathi:
        return 'mr';
      case Languages.nepali:
        return 'ne';
      case Languages.norwegian:
        return 'nn';
      case Languages.oriya:
        return 'or';
      case Languages.persian:
        return 'fa';
      case Languages.polish:
        return 'pl';
      case Languages.portuguese:
        return 'pt';
      case Languages.punjabi:
        return 'pa';
      case Languages.romanian:
        return 'ro';
      case Languages.russian:
        return 'ru';
      case Languages.sindhi:
        return 'sd';
      case Languages.sinhala:
        return 'si';
      case Languages.spanish:
        return 'es';
      case Languages.swahili:
        return 'sw';
      case Languages.swedish:
        return 'sv';
      case Languages.tamil:
        return 'ta';
      case Languages.telugu:
        return 'te';
      case Languages.thai:
        return 'th';
      case Languages.turkish:
        return 'tr';
      case Languages.ukranian:
        return 'uk';
      case Languages.urdu:
        return 'ur';
      case Languages.vietlanguageNamese:
        return 'vi';
      case Languages.yoruba:
        return 'yo';
    }
    return '';
  }

  String get countryCode {
    switch (this) {
      case Languages.afrikkans:
        return 'ZA';
      case Languages.arabic:
        return 'SA';
      case Languages.bengali:
        return 'IN';
      case Languages.chinese:
        return 'CN';
      case Languages.croatian:
        return 'HR';
      case Languages.dutch:
        return 'NL';
      case Languages.english:
        return 'US';
      case Languages.filipino:
        return 'PH';
      case Languages.finnish:
        return 'FI';
      case Languages.french:
        return 'FR';
      case Languages.german:
        return 'DE';
      case Languages.greek:
        return 'GR';
      case Languages.gujarati:
        return 'IN';
      case Languages.hausa:
        return 'LATN';
      case Languages.hebrew:
        return 'IL';
      case Languages.hindi:
        return 'IN';
      case Languages.hungarian:
        return 'HU';
      case Languages.icelandic:
        return 'IS';
      case Languages.indonesia:
        return 'ID';
      case Languages.irish:
        return 'IE';
      case Languages.italian:
        return 'IT';
      case Languages.japanese:
        return 'JP';
      case Languages.javanese:
        return 'ID';
      case Languages.kannada:
        return 'IN';
      case Languages.korean:
        return 'KR';
      case Languages.malay:
        return 'MY';
      case Languages.malayalam:
        return 'IN';
      case Languages.marathi:
        return 'IN';
      case Languages.nepali:
        return 'NP';
      case Languages.norwegian:
        return 'NO';
      case Languages.oriya:
        return 'IN';
      case Languages.persian:
        return 'AF';
      case Languages.polish:
        return 'PL';
      case Languages.portuguese:
        return 'PT';
      case Languages.punjabi:
        return 'GURU';
      case Languages.romanian:
        return 'RO';
      case Languages.russian:
        return 'RU';
      case Languages.sindhi:
        return 'IN';
      case Languages.sinhala:
        return 'LK';
      case Languages.spanish:
        return 'NI';
      case Languages.swahili:
        return 'KE';
      case Languages.swedish:
        return 'SE';
      case Languages.tamil:
        return 'IN';
      case Languages.telugu:
        return 'IN';
      case Languages.thai:
        return 'TH';
      case Languages.turkish:
        return 'TR';
      case Languages.ukranian:
        return 'UA';
      case Languages.urdu:
        return 'IN';
      case Languages.vietlanguageNamese:
        return 'VN';
      case Languages.yoruba:
        return 'NG';
    }
    return '';
  }
}
