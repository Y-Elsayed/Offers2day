// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Column(
          children: [

            SizedBox(
              height: 40,
            ),

            Container(
              color: Colors.transparent,

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    height: 45,
                    width: 287,
                    decoration: BoxDecoration(
                      color: Color(0xffAED9E0),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                    
                      children: [

                        SizedBox(
                          width: 10,
                        ),
                  
                        Icon(Icons.search),
                  
                        SizedBox(
                          width: 20,
                        ),
                  
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

                  

                  GestureDetector(
                    onTap: () {
                      // hena hanrooh lel notifications page
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
      
            SizedBox(
              height: 60,
            ),
      
            Container(
              height: 187,
              width: 432,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffAED9E0),
              ),
              
            ),

            SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),

                Container(
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),

                Container(
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),

            SizedBox(
              height: 50,
            ),

            Container(
              height: 187,
              width: 432,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffAED9E0),
              ),
              
            ),


          ],
        ),
      ),
    );
  }
}