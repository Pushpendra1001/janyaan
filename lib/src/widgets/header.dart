import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(children: [
                            Image.asset(
                              "lib/assets/icons/networking.png",
                              height: 35,
                              width: 50,
                              color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Janyaan",
                                style:
                                    TextStyle(fontSize: 25, color: Colors.white),
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.notifications,
                              size: 30,
                              color: Colors.white,
                            )
                          ]),
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 7),
                              child: TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Search for any problems',
                                suffixIcon: const Icon(Icons.search),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
  }
}