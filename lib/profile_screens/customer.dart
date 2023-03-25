import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:packers_bility/constants/padding_screen.dart';

import '../Utilitys/colors.dart';
import '../Utilitys/static_data.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
   int selectedIconIndex = 2;
  
  @override
  Widget build(BuildContext context) {
     List arr = StaticData.mainScreenIcons();
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.format_list_bulleted),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text(
              
              'Nice Packers & Movers',
              style: TextStyle(
                fontSize:14,
                // fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF), 
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 13,
          ),
          Icon(Icons.person),
          SizedBox(
            width: 11),
        ],
      ),
       bottomNavigationBar:
       CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: ColorCodes.AppleColor,
        height: 60.0,
        color: ColorCodes.whiteWithOpacity,
        onTap: (index) {
          setState(() {
            selectedIconIndex = index;
          });
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Image.asset('assets/home-icon.png',height: 25,),
          Image.asset('assets/Subscriptions.png',height: 25),
          Image.asset('assets/add-bill.png',height: 25,),
          Image.asset('assets/bill-design.png',height: 25,),
          Image.asset('assets/setting.png',height: 25,),
         
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: []),
                  const SizedBox(
                    
                    width: Dimensions.paddingSizeDefult,
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(top: 10),
                  //       child: Text(
                  //         "CUSTOMER SUPPORT",
                  //         style: TextStyle(
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold,
                  //           ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
            Container(
              color: Color(0xFFF5F5F5),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 42, bottom:568),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      child: SizedBox(
                        height: 156,
                        width: 152,
                        child: Padding(
                          
                          padding: const EdgeInsets.only(left: 0, top: 0),
                          child: Container(
                            color: Color(0xFFFDEEDB,), 
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "assets/whatsappicon.png",
                                     height: 41,
                                      width: 41,
                                      fit: BoxFit.cover,
                                      ),
                                ),
                                // CircleAvatar(
                                //   // backgroundColor: Colors.orange,
                                //   // radius: 24,
                                //   child: Container(
                                //       height: 41,
                                //       width: 41,
                                //       child:
                                //           Image.asset("assets/whatsappicon.png")),
                                // ),
                                 SizedBox(
                                  height: Dimensions.paddingSizeSmall,
                                ),
                                Text(
                                  "Whatsapp Number",
                                    style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                      ),
                                    ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "+91 6200716649",
                                  style: TextStyle(
                                    fontSize: 12)),
                                // SizedBox(
                                //   height: Dimensions.paddingSizeSmall,
                                // ),
                                Text(
                                  "+91 6200716649",
                                  style: TextStyle(fontSize: 12)),
                                  
                                SizedBox(
                                  height: 6,
                                ),
                                ElevatedButton(
                                  onPressed: null,
                                  child: Container(
                                      width: 114,
                                      height: 21,
                                      child: Center(
                                          child: Text(
                                        "Send Whatsapp",
                                        style: TextStyle(
                                            fontSize: 9,
                                            // fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ))),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(26.0),
                                    ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(10)),
                                    // textStyle: MaterialStateProperty.all(TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white))
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    Padding(
                padding: const EdgeInsets.only(right: 15,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: SizedBox(
                        height: 156,
                        width: 152,
                        child: Container(
                          
                          color: Color(0xFFE0F2FF),
                          child: Padding(
                            
                            padding: const EdgeInsets.only(left: 17, top: 14),
                            child: Column(
                              
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                   child: Image.asset("phonering.png"
                                  //  height: 39,
                                  //  width: 41,
                                  //  fit: BoxFit.cover,
                                   ),
                                   
                                  ),
                                
                                SizedBox(
                                  height:3,
                                ),
                                Text(
                                  "Contact Number",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight:FontWeight.bold)),
                                SizedBox(
                                  height:3,
                                ),
                                Text(
                                  "+91 6200716649",
                                    style: TextStyle(
                                      fontSize: 12)),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "+91 6200716649",
                                    style: TextStyle(
                                      fontSize: 12)),
                                SizedBox(
                                  height:6,
                                ),
                                ElevatedButton(
                                  onPressed: null,
                                  child: Container(
                                      width: 99,
                                      height: 21,
                                      child: Center(
                                        
                                          child: Text(
                                        "Call Us",
                                        style: TextStyle(
                                            fontSize: 9,
                                            // fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ))),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(10)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    ],
                    ),
                    ),
                  ],
                ),
                    ),
            ),
          ],
           
            ),
            ),
    );
  }
}
