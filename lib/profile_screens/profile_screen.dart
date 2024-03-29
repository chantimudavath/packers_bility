import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
   int selectedIconIndex = 2;

  Widget profileList() {
    print("Aj${arr.length}");
    return Column(
      children: List.generate(arr.length, (index) {
        return Column(
          children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Card(
                elevation: 3,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFFEEF0FD),
                    radius: 30,
                    child: Image.asset(
                      arr[index]["image"],
                      height: 18,
                      width: 18,
                    ),
                  ),
                  title: Text(
                    arr[index]["title"],
                    style: TextStyle(
                      color: Color(0xFF525252),
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    arr[index]["subTitle"],
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  //  leading: arr[index]["image"],
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          )
        ]);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // List arr = StaticData.mainScreenIcons();
    return Scaffold(
      backgroundColor: Color(0xFFEEF0FD),
      appBar: AppBar(
        leading: const Icon(Icons.format_list_bulleted),
        title: const Text(
          'Nice Packers & Movers',
          // AppLocalizationUtil.getTranslatedString("nice_packers_movers")
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
      bottomNavigationBar:
       CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: ColorCodes.AppleColor,
        height: 44.0,
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
          // Image.asset('assets/home-icon.png',height: 25,),
          // Image.asset('assets/Subscriptions.png',height: 25),
          // Image.asset('assets/add-bill.png',height: 25,),
          // Image.asset('assets/bill-design.png',height: 25,),
          // Image.asset('assets/setting.png',height: 25,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              children: [
                Image.asset('assets/home-icon.png',
                height: 19,
                width: 23 ,),
                 Text('Home'),
              ],
            ),
          ),
         
          Icon(
            Icons.search,
            size: 30,
            color:
                selectedIconIndex == 1 ? ColorCodes.WHITE : ColorCodes.blackD80,
          ),
          Icon(
            Icons.home_outlined,
            size: 30,
            color:
                selectedIconIndex == 2 ? ColorCodes.WHITE : ColorCodes.blackD80,
          ),
          Icon(
            Icons.favorite_border_outlined,
            
            size: 30,
            color:
                selectedIconIndex == 3 ? ColorCodes.WHITE : ColorCodes.blackD80,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color:
                selectedIconIndex == 4 ? ColorCodes.WHITE : ColorCodes.blackD80,
          ),
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
                    Container( child: Image.asset(
                        "assets/packers.png",
                        height: 92,
                        width: 92,
                        fit: BoxFit.fill,
                      ),
                      // backgroundColor: ColorCodes.grey2,
                      // radius: 54.5,
                      ),
                    // CircleAvatar(
                     
                    // ),
                    // Positioned(
                    //     left: 70,
                    //     child:
                    // CircleAvatar(
                    //       radius: 15,
                    //   child: Image.asset("assets/editicon.png",
                    //     // height: 19,
                    //     // width: 19,
                    //     ),
                    //     ),
                    //     ),
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
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text("ID : #9875246",
                       style: TextStyle(
                        fontSize: 15,
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),

                      height: 90,
                      width: 95,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 38,
                              width: 38,
                              decoration: const BoxDecoration(
                                  // color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child:
                                  Image.asset("assets/quotation-design.png")),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Quotation Design",
                              style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),

                      height: 90,
                      width: 95,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 38,
                              width: 38,
                              child:
                                  Image.asset("assets/check-your-rewards.png")),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Check your Rewerds",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),

                      height: 90,
                      width: 95,
                      // color: ColorCodes.red500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 38,
                              width: 38,
                              child: Image.asset("assets/refer-and-get.png")),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Refer & Get 1 Month Free",
                              style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                ],
              ),
            ),
            profileList(),
            SizedBox(
                    height: 85,
                  ),
          ],
        ),
      ),
    );
  }
}
