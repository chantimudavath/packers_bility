import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:packers_bility/LoginFlow/welcomescreen.dart';
import 'package:packers_bility/Utilitys/stringUtilitys.dart';

import '../Utilitys/imageUtility.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  int secondsRemaining = 30;
  bool enableResend = false;
  Timer? timer;

  @override
  initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
          print("secondsRemaining :${secondsRemaining}");
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _resendCode() {
    //other code here
    setState(() {
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width:MediaQuery.of(context).size.width,

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 119),
                child: Container(
                  child: const Text(
                    "Sign UP",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
              ),

              Container(
                width: 119,
                height: 194,
                decoration: BoxDecoration(
                           border: Border.all(
                             color: Color(0xFFF9B585),
                             
                             width: 5.0,
                             style: BorderStyle.solid
                           ),
                           borderRadius: BorderRadius.circular(25),
                          //  child: Image.asset(ImagesAssetPAth.mailImage),
                           color: Color(0xFF026EB6),
                           
                    ),
                // color: Color(0xFF026EB6),
                child: Image.asset(ImagesAssetPAth.mailImage),
              ),
              Container(
                width: 216,
                height: 7,
                color: Color(0xFFD9D9D9),
              ),
              Padding(
                padding: EdgeInsets.only(left: 72, right: 72, top: 36),
                child: Row(
                  children: [
                    Text('Enter OTP'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              getotp(),
              const SizedBox(
                height: 26,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: 75,
                  right: 35,
                ),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Checkbox(
                      //         value: this.value,
                      //         onChanged: (bool? value) {
                      //           setState(() {
                      //             this.value = value!;
                      //           });
                      //         },
                      //       ),
                      InkWell(
                        onTap: () => enableResend ? _resendCode() : null,
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                              fontSize: 13,
                              color: enableResend
                                  ? Color.fromARGB(255, 39, 39, 39)
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        secondsRemaining.toString(),
                        style: TextStyle(color: Colors.red, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 152,
                    height: 34,
                    child: ElevatedButton(
                      child: const Text(ProjectStrings.getStarted),
                      onPressed: () {
                        Get.to(const WelComeScreen());
                      },
                      style: ButtonStyle(
                          shape: (MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                            ),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF026EB6)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 14))),
                    ),
                  )),
              const SizedBox(
                height: 164,
              ),
              const Text(ProjectStrings.needAnyHelp),
              SizedBox(
                height: 15,
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Row(
              //   children: [Icon(Icons.call),
              //   SizedBox(

              //   ),
              //   Text(ProjectStrings.callUsAt)
              //   ],

              //   ),
              // )
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call),
                  SizedBox(
                    width: 10,
                  ),
                  Text(ProjectStrings.callUsAt),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  getotp() {
    return OtpTextField(
      numberOfFields: 4,
      fieldWidth: 55,
      borderWidth: 3,
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      // borderColor: Color(0xFF512DA8),
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      }, // end onSubmit
    );
  }
}
