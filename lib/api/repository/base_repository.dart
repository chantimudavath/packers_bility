import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:packers_bility/Utilitys/font_manager.dart';
import 'package:packers_bility/Utilitys/utils.dart';
import 'package:packers_bility/api/api_codes.dart';
import 'package:packers_bility/api/api_utils.dart';

class BaseRepo<T> {
  final GlobalKey<State> _loaderDialog = GlobalKey<State>();
  Future<T> get(
      {required String apiURL,
      Map<String, dynamic>? queryParameters,
      Options? options,
      required BuildContext context,
      bool showLoader = true}) async {
    if (showLoader) {
      startLoader(context);
    }
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      if (showLoader) {
        stopLoader();
      }
      showErrorAlert(context, "Error", apiUtils.getNetworkError());
      return {
        PARAM_STATUS_CODE: CODE_NO_INTERNET,
        PARAM_MESSAGE: apiUtils.getNetworkError(),
      } as T;
    }

    try {
      // var token = await _configManager.loadConfig(StringConstants.token);
      // if (token != "") {
      //   options?.headers?["token"] = token;
      // }
      final response = await apiUtils.get(
        url: apiURL,
        queryParameters: queryParameters,
        options: options,
      );
      if (showLoader) {
        stopLoader();
      }
      if (response.data != null) {
        String message = response.data["message"] ?? "";
        if ((response.data["success"] == false ||
                response.data["success"] == "false") &&
            message.toLowerCase().contains("session time out")) {
          showAlert(context);
        }
      }
      return response.data;
    } catch (e) {
      if (showLoader) {
        stopLoader();
      }
      if (e is DioError) {
        var responseJson = json.decode(e.response.toString());
        if (e.response?.statusCode == CODE_INTERNAL_SERVER_ERROR) {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        } else {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        }
      } else {
        return {
          PARAM_STATUS_CODE: CODE_ERROR,
          PARAM_MESSAGE: apiUtils.handleError(e),
          PARAM_ERROR: e.toString(),
        } as T;
      }
    }
  }

  startLoader(BuildContext context) {
    Utils().showLoadingDialog(context, _loaderDialog);
  }

  stopLoader() {
    if (_loaderDialog.currentContext != null) {
      Navigator.of(_loaderDialog.currentContext!, rootNavigator: true).pop();
    }
  }

  showErrorAlert(BuildContext context, String title, String message) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => {Navigator.of(context).pop()},
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text("Error",
          // AppLocalizationUtil.getTranslatedString('Error'),
          style: FontManager().getTextStyle(context),
        ),
        content: Text("session Timeout",
          // AppLocalizationUtil.getTranslatedString('sessionTimeout'),
          style: FontManager().getTextStyle(context),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => {
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     AppRoutes.login, (Route<dynamic> route) => false),
              Get.offNamedUntil('/login', (Route<dynamic> route) => false)
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<T> post(
      {required String apiURL,
      required data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      
      required BuildContext context,
      bool showLoader = true}) async {
    if (showLoader) {
      startLoader(context);
    }
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      if (showLoader) {
        stopLoader();
      }
      showErrorAlert(context, "Error", apiUtils.getNetworkError());
      return {
        PARAM_STATUS_CODE: CODE_NO_INTERNET,
        PARAM_MESSAGE: apiUtils.getNetworkError(),
      } as T;
    }

    try {
      // var token = await _configManager.loadConfig(StringConstants.token);
      // if (token != "") {
      //   options?.headers?["token"] = token;
      // }
      final response = await apiUtils.post(
        url: apiURL,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      if (showLoader) {
        stopLoader();
      }
      if (response.data != null) {
        String message = response.data["message"] ?? "";
        if ((response.data["success"] == false ||
                response.data["success"] == "false") &&
            message.toLowerCase().contains("session time out")) {
          showAlert(context);
        }
      }
      return response.data;
    } catch (e) {
      if (showLoader) {
        stopLoader();
      }
      if (e is DioError) {
        var responseJson = json.decode(e.response.toString());
        if (e.response?.statusCode == CODE_INTERNAL_SERVER_ERROR) {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        } else {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        }
      } else {
        return {
          PARAM_STATUS_CODE: CODE_ERROR,
          PARAM_MESSAGE: apiUtils.handleError(e),
          PARAM_ERROR: e.toString(),
        } as T;
      }
    }
  }

  Future<T> put(
      {required String apiURL,
      required data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      required BuildContext context,
      bool showLoader = true}) async {
    if (showLoader) {
      startLoader(context);
    }
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      if (showLoader) {
        stopLoader();
      }
      showErrorAlert(context, "Error", apiUtils.getNetworkError());
      return {
        PARAM_STATUS_CODE: CODE_NO_INTERNET,
        PARAM_MESSAGE: apiUtils.getNetworkError(),
      } as T;
    }

    try {
      // var token = await _configManager.loadConfig(StringConstants.token);
      // if (token != "") {
      //   options?.headers?["token"] = token;
      // }
      final response = await apiUtils.put(
        url: apiURL,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      if (showLoader) {
        stopLoader();
      }
      if (response.data != null) {
        String message = response.data["message"] ?? "";
        if ((response.data["success"] == false ||
                response.data["success"] == "false") &&
            message.toLowerCase().contains("session time out")) {
          showAlert(context);
        }
      }
      return response.data;
    } catch (e) {
      if (showLoader) {
        stopLoader();
      }
      if (e is DioError) {
        var responseJson = json.decode(e.response.toString());
        if (e.response?.statusCode == CODE_INTERNAL_SERVER_ERROR) {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        } else {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        }
      } else {
        return {
          PARAM_STATUS_CODE: CODE_ERROR,
          PARAM_MESSAGE: apiUtils.handleError(e),
          PARAM_ERROR: e.toString(),
        } as T;
      }
    }
  }
  Future<T> delete(
      {required String apiURL,
      Map<String, dynamic>? queryParameters,
      Options? options,
      required BuildContext context,
      bool showLoader = true}) async {
    if (showLoader) {
      startLoader(context);
    }
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      if (showLoader) {
        stopLoader();
      }
      showErrorAlert(context, "Error", apiUtils.getNetworkError());
      return {
        PARAM_STATUS_CODE: CODE_NO_INTERNET,
        PARAM_MESSAGE: apiUtils.getNetworkError(),
      } as T;
    }

    try {
      // var token = await _configManager.loadConfig(StringConstants.token);
      // if (token != "") {
      //   options?.headers?["token"] = token;
      // }
      final response = await apiUtils.delete(
        url: apiURL,
        queryParameters: queryParameters,
        options: options,
      );
      if (showLoader) {
        stopLoader();
      }
      if (response.data != null) {
        String message = response.data["message"] ?? "";
        if ((response.data["success"] == false ||
                response.data["success"] == "false") &&
            message.toLowerCase().contains("session time out")) {
          showAlert(context);
        }
      }
      return response.data;
    } catch (e) {
      if (showLoader) {
        stopLoader();
      }
      if (e is DioError) {
        var responseJson = json.decode(e.response.toString());
        if (e.response?.statusCode == CODE_INTERNAL_SERVER_ERROR) {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        } else {
          return {
            PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
            PARAM_MESSAGE: apiUtils.handleError(e),
            PARAM_ERROR: responseJson['error'],
          } as T;
        }
      } else {
        return {
          PARAM_STATUS_CODE: CODE_ERROR,
          PARAM_MESSAGE: apiUtils.handleError(e),
          PARAM_ERROR: e.toString(),
        } as T;
      }
    }
  }

  Future<T> uploadFile(
      {required String apiURL,
      required data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      required BuildContext context,
      bool showLoader = true}) async {
    if (showLoader) {
      startLoader(context);
    }
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      if (showLoader) {
        stopLoader();
      }
      showErrorAlert(context, "Error", apiUtils.getNetworkError());
      return {
        PARAM_STATUS_CODE: CODE_NO_INTERNET,
        PARAM_MESSAGE: apiUtils.getNetworkError(),
      } as T;
    }

    try {
      final response = await apiUtils.post(
        url: apiURL,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      if (showLoader) {
        stopLoader();
      }
      String message = response.data["message"] ?? "";
      if ((response.data["success"] == false ||
              response.data["success"] == "false") &&
          message.toLowerCase().contains("session time out")) {
        showAlert(context);
      }
      return response.data;
    } catch (e) {
      if (showLoader) {
        stopLoader();
      }
      return {
        PARAM_STATUS_CODE: CODE_INTERNAL_SERVER_ERROR,
        PARAM_MESSAGE: apiUtils.handleError(e),
      } as T;
    }
  }

  getProcessResponseBody(String text, String userID, String token) {
    Map<String, dynamic>? body = {
      "sentence": text,
      "userId": userID,
      "auth_token": token
    };
    return body;
  }
  

  getHeaders(String apiKey) {
    Map<String, dynamic>? headers = {
      'Content-Type': 'application/json',
      'apikey': apiKey,
      'Authorization':"Bearer${apiKey}",
      'Prefer':"return=minimal",
      
    };
    return headers;
  }
  

  getHeadersWithoutToken() {
    Map<String, dynamic>? headers = {
      'Content-Type': 'application/json',
    };
    return headers;
  }

  // getHeadersWithToken() {
  //   Map<String, dynamic>? headers = {
  //     'Authorization':
  //         "${EnvironmentSingleton.instance.tokenType} ${EnvironmentSingleton.instance.token}",
  //     'Content-Type': 'application/json',
  //   };
  //   return headers;
  // }
}
