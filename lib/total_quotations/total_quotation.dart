import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/app_localization_util.dart';

class total_quotation extends StatefulWidget {
  const total_quotation({super.key});

  @override
  State<total_quotation> createState() => _total_quotationState();
}

class _total_quotationState extends State<total_quotation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.format_list_bulleted),
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
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 25, right: 25),
              child: TextFormField(
                cursorColor: Colors.grey,
               decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                 border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                        ),
                        prefixIcon: Container(
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            Icons.search),
                          width: 18,
                        ),
                        ),
                        
              ),
            ),
            SizedBox(
              height: 13,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('TOTAL QUOTATIONS :',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(' 107',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,))
                ],
                
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Colors.white,
                elevation: 5.0,
                child: Row(
                  children: [
                    Container(
                      // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      height: 210,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Text('QUOTATIONS :#52107'),
                            
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
