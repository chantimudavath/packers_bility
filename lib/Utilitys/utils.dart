
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:packers_bility/Utilitys/colors.dart';
import 'package:packers_bility/Utilitys/font_manager.dart';

class Utils {
  //To get the loader on the screen
  Future<void> showLoadingDialog(BuildContext context, GlobalKey key) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          key: key,
          onWillPop: () {
            return Future<bool>.value(false);
          },
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.black
            ),
          ),
        );
      },
    );
  }

  bool validateEmail(String value) {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return (regex.hasMatch(value));
  }

  //To hide the loader on the screen
  void hideLoadingDialog(GlobalKey key) async {
    Navigator.of(key.currentContext!).pop();
  }

  showToastCancel(String strMessage, BuildContext context) {
    FToast fToast = FToast();
    fToast.init(context);
    Widget toastWithButton = Container(
      padding:
          const EdgeInsets.only(left:10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: ColorCodes.primary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              strMessage,
              softWrap: true,
              style: FontManager().getTextStyle(context,
                  lWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 14,
            ),
            color: Colors.white,
            onPressed: () {
              fToast.removeCustomToast();
            },
          )
        ],
      ),
    );
    fToast.showToast(
      child: toastWithButton,
      gravity: ToastGravity.TOP_RIGHT,
      toastDuration: const Duration(seconds: 2),
    );
  }
}
