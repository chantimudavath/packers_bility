import 'package:flutter/material.dart';
import 'package:packers_bility/Utilitys/colors.dart';
import 'package:packers_bility/Utilitys/static_data.dart';
import 'package:packers_bility/constants/padding_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  List arr = StaticData.profileList();

  Widget profileList() {
     print( "Aj${arr.length }");
    return Column(
      children: List.generate(
          arr.length,
          (index) {
            return Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,),
                   child: Card(
                  elevation: 3,
                     child: ListTile(
                      leading:  Image.asset(
                                                    arr[index]["image"]),
                                   title:Text(
                  
                      arr[index]["title"]
                      ) ,
                                   subtitle: Text(
                    
                      arr[index]["subTitle"]
                      ),
                                   // leading: arr[index]["image"],
                                   trailing: Icon(Icons.arrow_circle_right),
                     ),
                   ),
                 )]);
          }
              ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    CircleAvatar(
                      backgroundColor: ColorCodes.grey2,
                      radius: 50,
                    ),
                    Positioned(
                        left: 70,
                        child:
                            CircleAvatar(radius: 15, child: Icon(Icons.edit)))
                  ]),
                  const SizedBox(
                    width: Dimensions.paddingSizeDefult,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Nice Packers & Movers",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text("ID : #12345",
                      style: TextStyle(fontSize: 17)),
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

                      height: 100,
                      width: 100,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                               decoration:  const BoxDecoration(
             // color: Colors.green,
              borderRadius: BorderRadius.all( Radius.circular(40) )
            ),
                              child: Image.asset("assets/quotation-design.png")),
                          SizedBox(
                            height: Dimensions.paddingSizeDefult,
                          ),

                          Text("Quotation Design",
                              style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),

                      height: 100,
                      width: 100,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/check-your-rewards.png")),
                          SizedBox(
                            height: Dimensions.paddingSizeDefult,
                          ),
                          Text("Check your Rewerds",
                              style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),

                      height: 100,
                      width: 100,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/refer-and-get.png")),
                          SizedBox(
                            height: Dimensions.paddingSizeDefult,
                          ),
                          Text("Refer & Get 1 Month Free",
                              style: TextStyle(fontSize: 10)),
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
            profileList(),
         
         
         
          ],
        ),
      ),
    );
  }
}
