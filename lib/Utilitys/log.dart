import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Log {
  static void logs(String title, String msg) {
  debugPrint(msg, title);
  }
  static debugPrint(String message, String title){
    if (kDebugMode) {
      print('TAG:: $title :: $message');
    }
  }

  static void loga(String title, var msg) {
    //print('TAG:: $title :: $msg');
    // OR
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern
        .allMatches(msg)
        .forEach((match) => debugPrint( match.group(0)!, 'TAG:: $title :: '));
  }

  static void logi(String title, int msg) {
    debugPrint(msg.toString(), title);
  }

  static printWrapped(String text) {
    final pattern =  RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => debugPrint("", match.group(0) ?? "") );
  }

  static String printPrettyMap(Map mapData) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');

    // display map in alphabetic order
    final sortedData =  SplayTreeMap<String, dynamic>.from(
        mapData, (a, b) => a.compareTo(b));
    String prettyPrint = encoder.convert(sortedData);

    return prettyPrint;
  }
}