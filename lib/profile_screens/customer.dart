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
    return Scaffold(appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          '',
          // AppLocalizationUtil.getTranslatedString("nice_packers_movers")
        ),
        actions: const [
          Icon(Icons.alarm_add_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.man)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: [
                  
                  ]),
                  const SizedBox(
                    width: Dimensions.paddingSizeDefult,
                    // width: Dimensions.paddingSizeDefult,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "CUSTOMER SUPPORT",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            
            const SizedBox(
              width: Dimensions.paddingSizeExtraLarge,
            ),
            Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),

                      height: 150,
                      width: 150,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
            //               Container(
            //                   height: 50,
            //                   width: 50,
            //                    decoration:  const BoxDecoration(
            //  // color: Colors.green,
            //   borderRadius: BorderRadius.all( Radius.circular(40) )
            // ),
            //                   child: Image.asset("assets/quotation-design.png")),
                          // SizedBox(
                          //   height: Dimensions.paddingSizeDefult,
                          // ),

                          Text("Whatsapp Number",
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),

                      height: 150,
                      width: 150,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: Dimensions.paddingSizeDefult,
                          ),
                          Text("Contact Number",
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.fontSizeExtraLarge,
                  ),
                  SizedBox(
                    height: Dimensions.fontSizeExtraLarge,
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