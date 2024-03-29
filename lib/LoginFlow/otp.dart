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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 119,),
                  child: Container(
                    child: const Text(
                      "Sign UP",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF808080)
                        ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
              ),

             Stack(
                children: [
                    Center(
                   child: Container(
                    width: 119,
                    height: 194,
                    decoration: BoxDecoration(
                           border: Border.all(
                             color: Color(0xFFF9B585),
                             
                             width: 5.0,
                             style: BorderStyle.solid
                           ),
                           borderRadius: BorderRadius.circular(25),
                         
                           color: Color(0xFF026EB6),
                           
                    ),
                    
                     child: Image.asset(ImagesAssetPAth.mailImage), 
                            
                   ),
                 ),
               Positioned(
                left: MediaQuery.of(context).size.width*0.24,
                bottom: 0,
                 child: Container(
                  width: 216,
                  height: 7,
                   color: Color(0xFFD9D9D9),
                 ),
               ),
                ],
               ),
               SizedBox(
                height: 30,
               ),
              Padding(
                padding: EdgeInsets.only(left: 55, right: 286),
                child: Row(
                  children: [
                    Text('Enter OTP',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF000000),

                    ),),
                    
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              getotp(),
              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: 55,
                  
                ),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => enableResend ? _resendCode() : null,
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                              fontSize: 10,
                              color: enableResend
                                  ? Color.fromARGB(255, 39, 39, 39)
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway'),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        secondsRemaining.toString(),
                        style: TextStyle(
                          color: Color(0xFF466EFB),
                           fontSize: 10,
                           ),
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
                  ),
                  ),
              const SizedBox(
                height: 184,
              ),
              Align(alignment: Alignment.bottomCenter,
                child: const Text(
                  ProjectStrings.needAnyHelp,
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF000000),
                  ),)),
              SizedBox(
                height: 15,
              ),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/call_icon.png",
                  height: 19,
                  width: 19,
            ),
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(ProjectStrings.callUsAt,
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF000000),
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  getotp() {
   
    return Padding(
      
      padding: const EdgeInsets.only(left: 0, right: 55),
      child: OtpTextField(
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
      ),
    );
  }
}
