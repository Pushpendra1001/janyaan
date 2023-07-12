import 'package:flutter/material.dart';

// ignore: camel_case_types
class post extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String post_text ;
  // ignore: non_constant_identifier_names
  const post({super.key , required this.post_text});

  @override
  Widget build(BuildContext context) {
    return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:24.0 , vertical: 10),
                            child: SizedBox(
                              // height: 200,
                              
                              width: MediaQuery.sizeOf(context).width,
                              child: Column(
                                
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                            
                                Text(post_text),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      
                                      Image.asset(
                                        "lib/assets/icons/upload.png",
                                        color: const Color(0xff3AF1C3),
                                        height: 20,
                                      ),
                                      const Text(
                                        "22",
                                        style: TextStyle(
                                            color: Color(0xff3AF1C3)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15),
                                        child: Image.asset(
                                          "lib/assets/icons/download.png",
                                          color: Colors.red,
                                          height: 20,
                                        ),
                                      ),
                                      const Text(
                                        "6",
                                        style: TextStyle(
                                            color: Colors.red),
                                      ),
                                      
                                      const Spacer(),
                                       const Text("Suggestion 10+" )
                                    ],
                                  ),
                                )
                              ,
                              const Divider(color: Colors.black,)
                              ]),
                            ),
                            
                          );
  }
}