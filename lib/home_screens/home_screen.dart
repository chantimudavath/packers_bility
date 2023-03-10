import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:packers_bility/Utilitys/colors.dart';
import 'package:packers_bility/Utilitys/font_manager.dart';
import 'package:packers_bility/Utilitys/static_data.dart';
import 'package:packers_bility/constants/app_localization_util.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int selectedIconIndex = 2;
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    List arr = StaticData.mainScreenIcons();
    return Scaffold(
      
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(
            AppLocalizationUtil.getTranslatedString("nice_packers_movers")),
        actions: const [
          Icon(Icons.alarm_add_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.man)
        ],
      ),
   
   
   
   bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: ColorCodes.AppleColor,
        height: 60.0,
        color: ColorCodes.whiteWithOpacity,
        onTap: (index)
        {
          setState(()
          {
            selectedIconIndex = index;
          });
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Icon(Icons.play_arrow_outlined, size: 30,color: selectedIconIndex == 0 ? ColorCodes.WHITE :  ColorCodes.blackD80,),
          Icon(Icons.search, size: 30,color: selectedIconIndex == 1 ?  ColorCodes.WHITE :  ColorCodes.blackD80,),
          Icon(Icons.home_outlined, size: 30,color: selectedIconIndex == 2 ?  ColorCodes.WHITE :  ColorCodes.blackD80,),
          Icon(Icons.favorite_border_outlined, size: 30,color: selectedIconIndex == 3 ? ColorCodes.WHITE :  ColorCodes.blackD80,),
          Icon(Icons.person_outline, size: 30,color: selectedIconIndex == 4 ?  ColorCodes.WHITE :  ColorCodes.blackD80,),
        ],
      ),
   
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                reverse: false,
                height: 200,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 0.8,
                aspectRatio: 0.5,
                pageSnapping: true,
                onPageChanged: (index, _) {},
              ),
              itemBuilder: (context, index, realIdx) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5, top: 20, left: 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              itemCount: images.length,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Card(
                  color: Colors.white,
                  elevation: 8.0,
                  child: Container(
                    // padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            "Nice Pacekers & Movers",
                            style: (FontManager().getTextStyle(
                              context,
                              fontSize: 16,
                              lWeight: FontWeight.w400,
                              color: ColorCodes.BLACK,
                            )),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Container(
                                // color: ColorCodes.BLACK12,
                                // width: 20,
                                // height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "User Id",
                                      style: (FontManager().getTextStyle(
                                        context,
                                        fontSize: 14,
                                        // lWeight: FontWeight.w400,
                                        color: ColorCodes.BLACK26,
                                      )),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "850174597",
                                      style: (FontManager().getTextStyle(
                                        context,
                                        fontSize: 18,
                                        lWeight: FontWeight.w400,
                                        color: ColorCodes.BLACK,
                                      )),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "copy",
                                      style: (FontManager().getTextStyle(
                                        context,
                                        fontSize: 12,
                                        lWeight: FontWeight.w400,
                                        color: ColorCodes.BLACK,
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 20),
                              child: Container(
                                color: ColorCodes.greyIconColor,
                                width: 2,
                                height: 80,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 20),
                              child: Container(
                                // color: ColorCodes.BLACK12,
                                // width: 20,
                                // height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Plan",
                                      style: (FontManager().getTextStyle(
                                        context,
                                        fontSize: 14,
                                        // lWeight: FontWeight.w400,
                                        color: ColorCodes.BLACK26,
                                      )),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Silver",
                                      style: (FontManager().getTextStyle(
                                        context,
                                        fontSize: 18,
                                        lWeight: FontWeight.w400,
                                        color: ColorCodes.BLACK,
                                      )),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "20 Days Left",
                                      style: (FontManager().getTextStyle(
                                        context,
                                        fontSize: 12,
                                        lWeight: FontWeight.w400,
                                        color: ColorCodes.BLACK,
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: ElevatedButton(
                            child: const Text("Register Now"),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF026EB6)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(10)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(fontSize: 14))),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Column(
              children: [Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                    color: Colors.white,
                    elevation: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: const SizedBox(child: Text("ADD DOCUMENTS",style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w500
                              ),),)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            // padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                            height: 470,
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: GridView.count(
                                 crossAxisCount: 3, 
                                   crossAxisSpacing: 4.0,  
                mainAxisSpacing: 8.0,  
                                 children: List.generate(arr.length, (index) {  
                  return Column(
                                    children: [
                                      Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 1.0),
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(
                                                    30.0) //                 <--- border radius here
                                                ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                child: Image.asset(
                                                    arr[index]["image"]),
                                                // color: Colors.red,
                                              ),
                                            ],
                                          )
                                          // Image.asset(arr[index]["image"],fit: BoxFit.fill),
                                          ),
                                      Text(arr[index]["title"])
                                    ],
                                  );
                                }),
                          ),
                    ),
                        ],
                      )),
              )
              ]
             
             
            ))
          ],
        ),
      ),
    );
  }
}
