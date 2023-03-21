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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
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
                      height:200,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius:24,
                              child:Container( height: 30,
                              width: 30,
                                child: Image.asset("assets/whatsapplogo.png")) ,
                            ),
                             Text("Whatsapp Number",
                                style: TextStyle(fontSize: 15)),
                                SizedBox(height: Dimensions.paddingSizeSmall,),
                                Text("+91 6200716649",
                                style: TextStyle(fontSize: 15)),
                                 SizedBox(height: Dimensions.paddingSizeSmall,),
                                Text("+91 6200716649",  
                                style: TextStyle(fontSize: 15)),
                                SizedBox(height: Dimensions.paddingSizeSmall,),
                                ElevatedButton(onPressed: null, child: Container(
                                  width: 120, child: Center(child: Text("Send Whatsapp",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),))),style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                              // textStyle: MaterialStateProperty.all(TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white))
                                ),)

                          ],
                        ),
                      ),
                    ),
                  ),
                   Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: Dimensions.paddingSizeDefult,
                        ),
                        Text("Contact Number",
                            style: TextStyle(fontSize: 20)),
                      ],
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