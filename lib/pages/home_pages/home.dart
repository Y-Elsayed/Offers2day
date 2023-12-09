import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
            width: screenSize.width,
            height: screenSize.height,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Column(children: [
              const SearchBar(
                hintText: "Search offers",
              ),
              //starting from here will be a list view
              Container(
                  color: const Color.fromARGB(255, 248, 183, 108),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            //filter logic
                          },
                          icon: const Icon(Icons.restaurant_rounded, size: 40)),
                      IconButton(
                          onPressed: () {
                            //filter logic
                          },
                          icon: const Icon(Icons.restaurant_rounded, size: 40)),
                      IconButton(
                          onPressed: () {
                            //filter logic
                          },
                          icon: const Icon(Icons.restaurant_rounded, size: 40)),
                    ],
                  )),
              // const Gap(20),
              //This will contain the Hot offers, automatically swiped
              SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.4,
                child: Image.asset(
                  'assets/offer_placeholder.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              //This will have the filter iconbuttons
              //This will be the scrollable offers
              Expanded(
                child: SizedBox(
                  width: screenSize.width,
                  height: screenSize.height * 0.35,
                  child: Container(
                      color: Colors.blue,
                      child: const Center(
                          child: Text(
                        "Here will be the user's feed",
                      ))),
                ),
              ),
            ]));
  }
}