// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:janyaan/src/widgets/header.dart';
import 'package:janyaan/src/widgets/post.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
  // final top_height = 180;
  int CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // starting main body of program
          // backgroundColor: const Color(0xff0E2728),
          
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                //main column
                children: [
                  // title bar starting
                  // Container(
                  //   // height: 170,
                  //   color: const Color(0xff0E2728),
                    
                  // ),
            
                  const header(),
                  // title bar ending
                  Container(
                    // color: Colors.white,
                    // need to change this line
                    // height: MediaQuery.sizeOf(context).height - top_height - 98,
                    // margin: EdgeInsets.only(top: 34),
                    decoration: const BoxDecoration(
                      border: Border(top: BorderSide.none),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 15 ),
                            child: Text(
                              "Trending Post",
                              style: TextStyle(fontSize: 22, color: Colors.black , fontWeight: FontWeight.bold),
                            ),
                          ),
                          CarouselSlider(
                              options: CarouselOptions(
                                height: 150,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 4),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                // enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                              
                                // onPageChanged: callbackFunction,
                                scrollDirection: Axis.horizontal,
                              ),
                              items: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff082E31),
                                        border: Border.all(color: Colors.black),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(13))),
                                    width: 350,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          const Text(
                                            "  I am Priya from Bajaj Nagar and I travel to office every day by bus.The road near her house is under construction for the past six and no one take action...",
                    
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff3AF1C3)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20 , left: 10),
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
                                  ),
                                )
                              ]),
                          const SizedBox(height: 20,),
                          const post(post_text: "Hii I am Pooja from bajaj nagar"),
                          const post(post_text: "Our School Course is outdated..."),
                          const post(post_text: "I am Krishna From Alwar and...",),
                          const post(post_text: "In our area many robery are happen in these days"),
                          const post(post_text: "I am suffering from garbadge issue in our area",),                
                          const post(post_text: "From few months our area government hospital is closed.. ",)
                          // post(),
                          // post(),
                          // post(),
                          // ending
                        ],
                      ),
                    ),
                  ),
                  // bottom navigation bar starting
                  
                  // bottom navigation bar ending
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
        // color: Color(0xAA6213ff),
        color: Colors.white,
        
        
        child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 15),
        child: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            // color: Color(0xff082E31),
            color : const Color(0xff082E31)
          ),
          child: const GNav(
            
              // tabBorderRadius: 50,
              gap: 8,
              
              // backgroundColor: Color(0xAA6213ff),
              // color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xff0E2728),
              tabs: [
                GButton(
                  icon: Icons.home,
                  iconColor: Color(0xff3AF1C3),
                  text: "Home",
                  // textColor: Color(0xff3AF1C3),
                ),
                GButton(
                  icon: Icons.search,
                  iconColor: Color(0xff3AF1C3),
                  text: "Search",
                ),
                GButton(
                  icon: Icons.post_add,
                  iconColor: Color(0xff3AF1C3),
                  text: "Post",
                ),
                GButton(
                  icon: Icons.person,
                  iconColor: Color(0xff3AF1C3),
                  text: "Profile",
                ),
        // 0xff3AF1C3
        // 0xff167A6B
        // 0xff082E31
        // 0xff0E2728
              ]),
        ),
        ),
            ),
        ),
      ),
    );
  }
}
