

import 'package:flutter/material.dart';
import 'package:packers_bility/Utilitys/colors.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('',
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
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                  children:[
                    CircleAvatar(
                backgroundColor:ColorCodes.grey2,
                    radius: 50,
                    
                  ),

                  Positioned(left: 70,
                    child: CircleAvatar(
                      
                       radius: 15,
                      child: Icon(Icons.edit)))
                  ] 
                ),
                SizedBox(width: 10,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Text("Nice packers and Movers",style: TextStyle(fontSize: 16),),
                     ),
                     Text("ID no : 1234568765"),

                   ],
                 )
                
                ],
                 


              ),
            )

          ],
        ),
      ),
    );
  }
}