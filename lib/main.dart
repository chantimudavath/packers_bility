import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:packers_bility/LoginFlow/otp.dart';
import 'package:packers_bility/constants/constants.dart';
import 'package:get/get.dart';
import 'package:packers_bility/document_screen/document.dart';
import 'package:packers_bility/home_screens/home_screen.dart';
import 'package:packers_bility/profile_screens/profile_screen.dart';
import 'LoginFlow/welcomescreen.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale(Languages.hindi.languageCode, Languages.hindi.countryCode),
        Locale(Languages.english.languageCode, Languages.english.countryCode),
        Locale(Languages.arabic.languageCode, Languages.arabic.countryCode),
        Locale(Languages.spanish.languageCode, Languages.spanish.countryCode),
        Locale(Languages.french.languageCode, Languages.french.countryCode),
        Locale(Languages.gujarati.languageCode, Languages.gujarati.countryCode),
        Locale(
            Languages.malayalam.languageCode, Languages.malayalam.countryCode),
        Locale(Languages.tamil.languageCode, Languages.tamil.countryCode),
        Locale(Languages.telugu.languageCode, Languages.telugu.countryCode),
        Locale(Languages.portuguese.languageCode,
            Languages.portuguese.countryCode),
        Locale(
            Languages.indonesia.languageCode, Languages.indonesia.countryCode),
        Locale(Languages.german.languageCode, Languages.german.countryCode),
        Locale(Languages.japanese.languageCode, Languages.japanese.countryCode),
        Locale(Languages.chinese.languageCode, Languages.chinese.countryCode),
        Locale(Languages.kannada.languageCode, Languages.kannada.countryCode),
        Locale(Languages.russian.languageCode, Languages.russian.countryCode),
        Locale(Languages.greek.languageCode, Languages.greek.countryCode),
        Locale(Languages.swedish.languageCode, Languages.swedish.countryCode),
        Locale(Languages.dutch.languageCode, Languages.dutch.countryCode),
        Locale(Languages.italian.languageCode, Languages.italian.countryCode)
      ],
      path: 'assets/translations',
      fallbackLocale:
          Locale(Languages.english.languageCode, Languages.english.countryCode),
    
  child:  const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/otpScreen', page: () => const OTPScreen()),
        GetPage(name: '/homePage', page: () => const HomePage()),
        GetPage(name: '/welComeScreen', page: () => const WelComeScreen()),
        GetPage(name: '/documentsList', page: () => const DocumentsList()),
      ],
    );
  }
}
