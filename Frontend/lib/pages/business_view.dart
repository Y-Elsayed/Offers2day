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
        width: screenSize.width,
        height: screenSize.height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
        child: Stack(
          children: [
            Positioned(
              left: screenSize.width * 0.607,
              top: screenSize.height * 1.441,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: Container(
                  width: screenSize.width * 1.215,
                  height: screenSize.height * 0.576,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(175, 174, 217, 224),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.account_circle,
                    size: 150,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 1.545,
              top: screenSize.height * 1.23,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: Container(
                  width: screenSize.width * 0.872,
                  height: screenSize.height * 0.413,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(225, 255, 218, 185),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.155,
              left: 0,
              right: 0,
              child: const Center(
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
              top: screenSize.height * 0.204,
              left: screenSize.width * 0.229,
              child: Image.asset("assets/images-2.png"),
            ),
            Positioned(
              top: screenSize.height * 0.42,
              left: 0,
              right: 0,
              child: const Center(
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
                      backgroundColor: const Color(0xFFAED9E0),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            50), // Changed the shape to a pill-shaped button
                      ),
                    ),
                    child: const Text(
                      'Add Offer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Functionality for viewing offers
                      // Add your logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFDAB9),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
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
