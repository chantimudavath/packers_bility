import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utilitys/imageUtility.dart';

class WelComeScreen extends StatefulWidget {
  const WelComeScreen({super.key});

  @override
  State<WelComeScreen> createState() => _WelComeScreenState();
}

class _WelComeScreenState extends State<WelComeScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF026EB6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              ImagesAssetPAth.waveImage,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 46, right: 46),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Well Come",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      Text(
                        "Please Enter Your Details",
                        style: TextStyle(fontSize: 12, color: Colors.white24),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                //

                Form(
                   key: _formKey,
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name Of Buisness",
                      style: TextStyle(fontSize: 10, color: Colors.white24),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                                 color: Colors.blue,
                              ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                const SizedBox(
                  height: 18,
                ),


                     const Text(
                      "Work E-Mail",
                      style: TextStyle(fontSize: 10, color: Colors.white24),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                                  color: Colors.blue,
                              ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                const SizedBox(
                  height: 18,
                ),



                     const Text(
                      "Password",
                      style: TextStyle(fontSize: 10, color: Colors.white24),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                                 color: Colors.blue,
                              ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                const SizedBox(
                  height: 18,
                ),



                     const Text(
                      "Confirm Password",
                      style: TextStyle(fontSize: 10, color: Colors.white24),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.blue,
                              ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                const SizedBox(
                  height: 18,
                ),
                  ],
                )),
             
             const SizedBox(height: 36,),

              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 34,
                  child: ElevatedButton(
                    child:  Text("Create Account"),
                    onPressed: () {
                if (_formKey.currentState!.validate()) {
             
                }
              },
                    style: ButtonStyle(
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                              ),),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFFF47116)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 14))),
                  ),
                ),
              ),
             
              ],
            ),
          )
        ],
      ),
    );
  }
}
