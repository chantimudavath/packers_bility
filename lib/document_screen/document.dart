import 'package:flutter/material.dart';
import 'package:packers_bility/Utilitys/static_data.dart';
import 'package:packers_bility/constants/app_localization_util.dart';

import '../Utilitys/colors.dart';

class DocumentsList extends StatefulWidget {
  const DocumentsList({super.key});

  @override
  State<DocumentsList> createState() => _DocumentsListState();
}

class _DocumentsListState extends State<DocumentsList> {
  List arr = StaticData.documentsList();

  Widget documentsList() {
    print("Aj${arr.length}");
    return Column(
      children: List.generate(arr.length, (index) {
        return Column(children: [
          
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Card(
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor:Color(0xFFECECEC),
                  radius: 30,
                  child: Image.asset(arr[index]["image"], height: 40, width: 25,),
                   ),
                   
                
                title: Text(arr[index]["title"]),
                subtitle: Text(arr[index]["subTitle"]),
                //  leading: arr[index]["image"],
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          )
        ]);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.format_list_bulleted),
        title: Text(AppLocalizationUtil.getTranslatedString("")),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [] ),
                    ]
                    ),
              ),
              documentsList()
            ]),
      ),
    );
  }
}
