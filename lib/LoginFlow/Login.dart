import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packers_bility/LoginFlow/otp.dart';
import 'package:packers_bility/Utilitys/stringUtilitys.dart';

import '../Utilitys/imageUtility.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF5F5F5),
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
                
                  
              
                child: const Text("Sign UP",style: TextStyle(
                  fontSize: 20
                ),
                ),
             
                
                
                ),
        
              ),
                 const SizedBox(
                  height:34 ,
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
                left: MediaQuery.of(context).size.width*0.28,
                bottom: 0,
                 child: Container(
                  width: 216,
                  height: 7,
                   color: Color(0xFFD9D9D9),
                 ),
               ),
                ],
               ),
                  Padding(  
                    padding: const EdgeInsets.only(left:59,right:35,top: 36
                    ),  
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mobile No:'),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(  
                          decoration: InputDecoration(  
                            border: OutlineInputBorder(
                             borderSide:  BorderSide(color: Color.fromRGBO(0, 0, 0, 0.25), width: 2.0),
                               borderRadius : const BorderRadius.all(Radius.circular(10.0)),
                            ),  
                          
                          ),  
                        ),
                      ],
                    ),  
                  ),  
        
             SizedBox(
              height: 26,
             ),
        
             Padding(
           padding: EdgeInsets.only(left:59,right:35,
                    ),
               child: Container(
                child: Row(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Checkbox(
                              value: this.value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ), 
                          
        
                            Row(
                              children: [
                                const Text(ProjectStrings.iAgreeWiththeTermsandConditions,style: TextStyle(fontSize: 13,fontWeight:FontWeight.w700 ),),
                                 const Text(ProjectStrings.termsandConditions,style: TextStyle(fontSize: 13,color: Colors.blue),),
                              ],
                            )
                            
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
              child:  const Text(ProjectStrings.getOTP),
              onPressed: () {
                print("Button Clicked");
               Get.to(() => const OTPScreen());
              },
              style: ButtonStyle(
                shape: (MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                                ),)),
                  backgroundColor: MaterialStateProperty.all(Color(0xFF026EB6)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14))),
              ), 
          )
          ), 
              const SizedBox(
                height: 184,
              ),
                const Text(ProjectStrings.needAnyHelp,style: TextStyle(fontSize: 12)),
                SizedBox(height: 15,),
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
                children:[Icon(Icons.call),
                SizedBox(
                width: 10,  
                  ),
                  Text(ProjectStrings.callUsAt,style: TextStyle(fontSize: 12)),
   ],
 )
            ],
          ),
        ),
      ),
    );
  }
}