import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Post> feedPosts = []; // Example data structure for feed posts

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: null,
        body: Column(children: [
          Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 101, 175, 209),
              height: screenSize.height * 0.1,
              child: const SearchBar(hintText: "Search offers2day")),
          //starting from here will be a list view
          Container(
              color: const Color.fromARGB(255, 248, 183, 108),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      padding: const EdgeInsets.only(right: 60),
                      onPressed: () {
                        //filter logic
                      },
                      icon: const Icon(Icons.restaurant_rounded, size: 40)),
                  IconButton(
                      padding: const EdgeInsets.only(right: 60),
                      onPressed: () {
                        //filter logic
                      },
                      icon: const Icon(Icons.restaurant_rounded, size: 40)),
                  IconButton(
                      padding: const EdgeInsets.only(right: 60),
                      onPressed: () {
                        //filter logic
                      },
                      icon: const Icon(Icons.restaurant_rounded, size: 40)),
                ],
              )),
          // const Gap(20),
          //This will contain the Hot offers, automatically swiped
          Container(
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height * 0.4,
              child: Container(
                // color: Colors.blue,
                child: Image.asset(
                  'assets/offer_placeholder.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //This will have the filter iconbuttons
          //This will be the scrollable offers
          Container(
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
          Expanded(
              child: Container(
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          padding: const EdgeInsets.only(right: 60),
                          onPressed: () {
                            //filter logic
                          },
                          icon: const Icon(Icons.person, size: 40)),
                      IconButton(
                          padding: const EdgeInsets.only(right: 60),
                          onPressed: () {
                            //filter logic
                          },
                          icon: const Icon(Icons.home, size: 40)),
                      IconButton(
                          padding: const EdgeInsets.only(right: 60),
                          onPressed: () {
                            //filter logic
                          },
                          icon: const Icon(Icons.menu, size: 40)),
                    ],
                  ))),
        ]));
  }
}
