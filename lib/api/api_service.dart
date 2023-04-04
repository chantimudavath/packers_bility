import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:packers_bility/constants/api%20Constants/constants.dart';

class APIService {
  Future processCuResponse(String response,
      String userId,String token, ) async {
    var json = {"response": response,"user_ID": userId ,"auth_token": token};
    try {
      String url = Environment.users;
      var response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(json),
      );
      return response;
    } catch (e) {
      return e;
    }
  }





}