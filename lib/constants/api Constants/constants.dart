enum AttributePopOptions {
  //mapping,
  configure,
  specialFeatures,
  editAttribute,
  subAttribute,
  uicontrols,
  delete
}

enum HumanAgentPopOptions {
  //mapping,
  configure,
  specialFeatures,
}

enum CUPopOptions {
  connectors,
  // mapping,
  alternativeConditions,
  nestedConditions,
  addRecursiveCondition,
  configure,
  specialFeatures,
}

enum EntityPopOptions {
  // mapping,
  configure,
  specialFeatures,
  ocr,
  editObject,
  delete
}

class Environment {
  static bool showAppBar = true;

  // new environment details :
  static const String baseUrl =
      "https://whnldlmwsksruwgrdkwi.supabase.co/rest/v1/"; //"https://iot.nslhub.com/";
 

  static const String apartments =
      "apartments"; //apartments API
 
 static const String users =
      "users";
}
