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
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            color: Colors.white,
            elevation: 5.0,
            child: Container(
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
          ),
        ),
      ),
    );
  }
}
