// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// colors
// 0xff3AF1C3
// 0xff167A6B
// 0xff082E31
// 0xff0E2728

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final top_height = 180;
  int CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // starting main body of program
          backgroundColor: const Color(0xff0E2728),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              //main column
              children: [
                // title bar starting
                Container(
                  height: 180,
                  color: const Color(0xff0E2728),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                left: 20.0, right: 20, top: 20),
                            child: TextField(
                                decoration: InputDecoration(
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
                ),
                // title bar ending
                Container(
                  // color: Colors.white,
                  // need to change this line
                  height: MediaQuery.sizeOf(context).height - top_height - 98,
                  // margin: EdgeInsets.only(top: 34),
                  decoration: const BoxDecoration(
                    border: Border(top: BorderSide.none),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            "Trending Problems",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                        ),
                        CarouselSlider(
                            options: CarouselOptions(
                              height: 180,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 4),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,

                              // onPageChanged: callbackFunction,
                              scrollDirection: Axis.horizontal,
                            ),
                            items: [
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff082E31),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(23))),
                                width: 350,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Hii there i am pushpendra how are you what are you doing here i am tried what you think what you do here i think  ",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color(0xff3AF1C3)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 18),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "lib/assets/icons/upload.png",
                                              color: Colors.white,
                                              height: 20,
                                            ),
                                            const Text(
                                              "22",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Image.asset(
                                                "lib/assets/icons/download.png",
                                                color: Colors.white,
                                                height: 20,
                                              ),
                                            ),
                                            const Text(
                                              "22",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),

                        Container(
                          child: Column(children: [
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text(
                                "Hii there i am pushpendra how are yuo what you think"),
                            Text("Hii"),
                            Text("Hii"),
                            Text("Hii"),
                          ]),
                        )
                        // ending
                      ],
                    ),
                  ),
                ),
                // bottom navigation bar starting
                BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_filled), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.post_add), label: "Post"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.supervised_user_circle_sharp),
                        label: "Profile"),
                  ],
                  currentIndex: CurrentIndex,
                  onTap: (int index) {
                    setState(() {
                      CurrentIndex = index;
                    });
                  },
                )
                // bottom navigation bar ending
              ],
            ),
          ),
        ),
      ),
    );
  }
}
