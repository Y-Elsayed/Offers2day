// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:offers2day/pages/widgets/offers_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> placeholderImages = [
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
  ];

  final List<String> items =
      List.generate(10, (index) => 'Product ${index + 1}');

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    // Start automatic swiping
    startAutoSwiping();
  }

  void startAutoSwiping() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < placeholderImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 430,
                    height: 932,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                    child: Stack(
                      children: [
                        Positioned(
                          left: -98,
                          top: -196,
                          child: Container(
                            width: 359,
                            height: 359,
                            decoration: const ShapeDecoration(
                              color: Color.fromARGB(225, 255, 218, 185),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 183,
                          top: -376,
                          child: Container(
                            width: 466,
                            height: 466,
                            decoration: const ShapeDecoration(
                              color: Color.fromARGB(175, 174, 217, 224),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 368,
                          top: 1266,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(3.14),
                            child: Container(
                              width: 466,
                              height: 466,
                              decoration: const ShapeDecoration(
                                color: Color.fromARGB(175, 174, 217, 224),
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 636,
                          top: 1067,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(3.14),
                            child: Container(
                              width: 359,
                              height: 359,
                              decoration: const ShapeDecoration(
                                color: Color.fromARGB(225, 255, 218, 185),
                                shape: CircleBorder(),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 10000,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 0),
                      Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle tap on search bar
                                print('Search bar tapped!');
                              },
                              child: Container(
                                height: 50,
                                width: 330,
                                decoration: BoxDecoration(
                                  color: Color(0xffAED9E0),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Icon(Icons.search),
                                    SizedBox(width: 20),
                                    Text(
                                      "Search",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle tap on notifications
                                // Navigator.pushNamed(context, "/notifications");
                              },
                              child: Container(
                                height: 53,
                                width: 56,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFDAB9),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(
                                  Icons.notifications_none_sharp,
                                  size: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 60),
                      SizedBox(
                        height: 200,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: placeholderImages.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: NetworkImage(placeholderImages[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              // Handle tap on Restaurants
                              print('Restaurants tapped!');
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 75,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFDAB9),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(
                                      Icons.restaurant_outlined,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    "Restaurants",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle tap on Hyper Markets
                              print('Hyper Markets tapped!');
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 75,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFDAB9),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(
                                      Icons.local_grocery_store_outlined,
                                      size: 35,
                                    ),
                                  ),
                                  Text(
                                    "Hyper Markets",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle tap on Clothing Stores
                              print('Clothing Stores tapped!');
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 75,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFDAB9),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 35,
                                    ),
                                  ),
                                  Text(
                                    "Clothing Stores",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Expanded(
                        child: Container(
                          height: 400,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffAED9E0),
                          ),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                            ),
                            itemCount: items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return OffersWidget();
                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 200), // Additional space for scrolling
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
