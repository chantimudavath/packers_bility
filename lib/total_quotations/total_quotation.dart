import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
      backgroundColor: Color(0xffeef0fd),
      appBar: AppBar(
        leading: const Icon(Icons.format_list_bulleted),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 25, right: 25),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  suffixIcon: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.search),
                    width: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 13,
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
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(' 107',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            Column(
              children: List.generate(
                quotList.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          // color: Colors.green,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  quotList[index]["no"],
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "#" + quotList[index]["quotationID"],
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
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
                                  MediaQuery.of(context).size.height * 0.045,
                              color: Colors.green,
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
                                        Icon(Icons.man_rounded),
                                        SizedBox(
                                          width: 05,
                                        ),
                                        Text(
                                  "#" + quotList[index]["name"],
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              color: Colors.red,
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        // color: Colors.green,
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      SizedBox(
                        height: 10,
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
