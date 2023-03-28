import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:packers_bility/Utilitys/static_data.dart';

import '../constants/app_localization_util.dart';

class total_quotation extends StatefulWidget {
  const total_quotation({super.key});

  @override
  State<total_quotation> createState() => _total_quotationState();
}

class _total_quotationState extends State<total_quotation> {
  var quotList = StaticData.quotationList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF0FD),
      appBar: AppBar(
        leading: const Icon(Icons.format_list_bulleted),
        title: const Text(
          'Nice packers & Movers',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        actions: [
          Container(
            child: Image.asset(
              "assets/notification-bell.png",
              height: 16,
              width: 14,
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Container(
            child: Image.asset(
              "assets/user-icon.png",
              height: 16,
              width: 13,
            ),
          ),
          SizedBox(
            width: 11,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 25, right: 25),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Color(0xFF080808),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      "assets/search-icon.png",
                      // width: 22,
                      // height: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'TOTAL QUOTATIONS :',
                    style: TextStyle(
                      color: Color(0xFFE87B26),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(' 107',
                      style: TextStyle(
                        color: Color(0xFF047ED1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Column(
              children: List.generate(
                quotList.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 22, right: 28),
                  child: Column(
                    children: [
                      Container(
                        
                          decoration: const BoxDecoration(
                            color: Color(0xFF057ECF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  quotList[index]["no"],
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFFFFFFF),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  " " + quotList[index]["quotationID"],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                      ),
                                ),
                              )
                            ],
                          )),
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: Column(
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.04,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Color(0xFFEEF0FD),
                                          child: Image.asset(
                                            'assets/profileIcon.png',
                                            height: 22,
                                            width: 22,
                                          ),
                                        ),
                                        // CircleAvatar(
                                        //   backgroundColor: Colors.grey,
                                        //   radius: 10,
                                        //   child: new SvgPicture.asset(
                                        //     'assets/profileIcon.png',
                                        //     height: 22.0,
                                        //     width: 22.0,

                                        //   ),
                                        // ),
                                        SizedBox(
                                          width: 05,
                                        ),
                                        Text(
                                          quotList[index]["name"],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF525252),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 68,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Color(0xFFEEF0FD),
                                            child: Image.asset(
                                            'assets/rupee.png',
                                            height: 22,
                                            width: 22,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 05,
                                        ),
                                        // CircleAvatar(
                                        //   radius: 20,
                                        //   backgroundColor: Color(0xFFEEF0FD),
                                          // child: Image.asset(
                                          //   'assets/rupee.png',
                                          //   height: 22,
                                          //   width: 22,
                                          // ),
                                        // ),
                                        Text(
                                          quotList[index]["cost"],
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF525252),
                                              ),
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              // color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 18 ),
                                    child: Container(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "FROM",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xFFDDE0E9),
                                              ),
                                        ),
                                        Text(quotList[index]["from"],
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: Color(0xFF525252),
                                                ),
                                                ),
                                      ],
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                color: Colors.black,
                                                height: 1,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              
                                              CircleAvatar(
                                                radius: 15,
                                                backgroundColor:
                                                    Color(0xFFEEF0FD),
                                                child: Image.asset(
                                                  'assets/truck.png',
                                                  height: 24,
                                                  width: 24,
                                                ),
                                              ),
                                              
                                              // Icon(Icons.abc),
                                              SizedBox(
                                                width: 3,
                                              ),

                                              Container(
                                                width: 30,
                                                color: Colors.black,
                                                height: 1,
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        // Container(
                                        //   child: Row(
                                        //     children: [
                                        //        Icon(Icons.picture_as_pdf),
                                        //     ],
                                        //   ),
                                          
                                          
                                        // ),
                                        Text(
                                          quotList[index]["date"],
                                            style: TextStyle(
                                                fontSize: 11,
                                                // fontWeight: FontWeight.bold,
                                                color: Color(0xFF525252),
                                                ),
                                                ),
                                                
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 24, top: 18),
                                    child: Container(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("TO",
                                            style: TextStyle(
                                                fontSize: 11,
                                                color:Color(0xFFDDE0E9),
                                                ),
                                                ),
                                        Text(quotList[index]["to"],
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: Color(0xFF525252),
                                                ),
                                                ),
                                      ],
                                    )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.044,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Color(0xFFEEF0FD),
                                          child: Image.asset(
                                            'assets/phone_call.png',
                                            height: 22,
                                            width: 22,
                                          ),
                                        ),
                                          // Icon(Icons.phone_in_talk),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(quotList[index]["mobileNo"],
                                          
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  // fontWeight: FontWeight.bold,
                                                  color: Color(0xFF525252),
                                                  ),
                                                  ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Color(0xFFEEF0FD),
                                          child: Image.asset(
                                            'assets/pdf.png',
                                            height: 22,
                                            width: 22,
                                          ),
                                        ),
                                          // Icon(Icons.picture_as_pdf),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Share PDF",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF525252),
                                                  ),
                                                  ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFD9DCE5).withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        // color: Colors.green,
                        height: MediaQuery.of(context).size.height * 0.04,

                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "More Options",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xFF525252),
                                        ),
                                        ),
                                InkWell(child: Icon(Icons.expand_more)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
