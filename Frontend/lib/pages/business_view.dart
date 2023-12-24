import 'package:flutter/material.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: 430,
        height: 932,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
        child: Stack(
          children: [
            Positioned(
              left: 250,
              top: 1250,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(175, 174, 217, 224),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.account_circle,
                    size: 150,
                    color: Colors.white,
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
                  decoration: BoxDecoration(
                    color: Color.fromARGB(225, 255, 218, 185),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Business Profile',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 210.0,
              left: 105.0,
              child: Stack(children: <Widget>[
                const CircleAvatar(
                  radius: 110.0,
                  backgroundImage:
                      AssetImage('assets/images-2.png'),
                ),
              ]),
            ),
            Positioned(
              top: screenSize.height * 0.42,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Your Business Text',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.5,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Functionality for adding offer
                      // Add your logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFAED9E0),
                      onPrimary: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50), // Changed the shape to a pill-shaped button
                      ),
                    ),
                    child: Text(
                      'Add Offer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Functionality for viewing offers
                      // Add your logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFDAB9),
                      onPrimary: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'View Offers',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
