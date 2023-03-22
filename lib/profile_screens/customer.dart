import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:packers_bility/constants/padding_screen.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.format_list_bulleted),
        title: const Text(
          '',
        ),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.person)
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "CUSTOMER SUPPORT",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: SizedBox(
                      height: 210,
                      width: 210,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: 24,
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child:
                                      Image.asset("assets/whatsapplogo.png")),
                            ),
                             SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "Whatsapp Number",
                                style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                                  ),
                                ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "+91 6200716649",
                              style: TextStyle(fontSize: 17)),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "+91 6200716649",
                              style: TextStyle(fontSize: 17)),
                              
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            ElevatedButton(
                              onPressed: null,
                              child: Container(
                                  width: 120,
                                  child: Center(
                                      child: Text(
                                    "Send Whatsapp",
                                    style: TextStyle(
                                        fontSize: 12,
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
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: SizedBox(
                      height: 210,
                      width: 210,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 24,
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("phonecall.png"),
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "Contact Number",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight:FontWeight.bold)),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "+91 6200716649",
                                style: TextStyle(
                                  fontSize: 17)),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "+91 6200716649",
                                style: TextStyle(
                                  fontSize: 17)),
                            SizedBox(
                              height: Dimensions.paddingSizeSmall,
                            ),
                            ElevatedButton(
                              onPressed: null,
                              child: Container(
                                  width: 120,
                                  child: Center(
                                      child: Text(
                                    "Call us",
                                    style: TextStyle(
                                        fontSize: 12,
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
          ],
        ),
      ),
    );
  }
}
