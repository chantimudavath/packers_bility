

import 'package:flutter/material.dart';
import 'package:packers_bility/Utilitys/static_data.dart';
import 'package:packers_bility/constants/app_localization_util.dart';

class DocumentsList extends StatefulWidget {
  const DocumentsList({super.key});

  @override
  State<DocumentsList> createState() => _DocumentsListState();
}

class _DocumentsListState extends State<DocumentsList> {
  var arrofDoc = StaticData.profileList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(
            AppLocalizationUtil.getTranslatedString("Document")),
        actions: const [
          Icon(Icons.alarm_add_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.man),
          
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Container(
              child: Text("Documents"),
            ),

            Card(
              child: Container(child: Column(
                children: List.generate(arrofDoc.length, (index) => ListTile(
            leading: CircleAvatar(
              child: Image.asset(arrofDoc[index]["image"]),
              
            ),title: Text(arrofDoc[index]["title"]),
                )),
              )),
            )
          ],
        ),
      ),
    );
  }
}