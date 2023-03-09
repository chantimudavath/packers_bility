

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:packers_bility/constants/app_localization_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(AppLocalizationUtil.getTranslatedString("nice_packers_movers")),
        actions: const [
          Icon(Icons.alarm_add_outlined),
          SizedBox(width: 10,),
          Icon(Icons.man)
        ],
      ),
      body:SingleChildScrollView(
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
                  return
                  Padding(
                    padding: const EdgeInsets.only(right: 5,top: 20,left: 5),
                    child: SizedBox(
                      width: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                         images[index]  ,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                 itemCount:  images.length,
              
              ),
          ],
        ),
      ) ,
    );
  }
}