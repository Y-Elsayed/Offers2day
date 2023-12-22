import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:arrow_path/arrow_path.dart';



class Sign_up_as extends StatefulWidget {
  const Sign_up_as({super.key});

  @override
  State<Sign_up_as> createState() => _sign_up_asState();
}

class _sign_up_asState extends State<Sign_up_as> {
  @override
  Widget build(BuildContext context) {
   Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: null,
        body: Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
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
                            shape: OvalBorder(),
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
                            shape: OvalBorder(),
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
                              shape: OvalBorder(),
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
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 100,
                top: 310,
                child: SizedBox(
                  width: 256,
                  height: 96,
                  child: Text(
                    'Sign Up As',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 35,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                    
                  ),
                ),
                
              ),
              Positioned(
                child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 700),
              painter: ArrowPainter(),
            )),
            Positioned(
                child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 700),
              painter: ArrowPainter2(),
            )),
              
           Positioned(
  top: 510, // Adjust the vertical position of the text
  left: 50,
  child: Column(
    children: [
      GestureDetector(
        onTap: () {
          // Navigate to sign-up page
          Navigator.pushNamed(context, '/signuppage');
        },
        child: Container(
          width: 90,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromRGBO(174, 217, 224, 1),
              width: 2.0, // Adjust the border width as needed
            ),
          ),
          child: const Icon(
            Icons.person,
            color: Color.fromRGBO(174, 217, 224, 1),
            size: 40,
          ),
        ),
      ),
       const SizedBox(height: 8), // Adjust the spacing between the icon and text
      const Text(
        'User',
        style: TextStyle(
          color: const Color.fromRGBO(174, 217, 224, 1),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
               Positioned(
  top: 510, // Adjust the vertical position of the text
  right: 60,
  child: Column(
    children: [
      GestureDetector(
        onTap: () {
          // Navigate to business-related page
          Navigator.pushNamed(context, '/businesspage');
        },
        child: Container(
          width: 90,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromRGBO(255, 218, 185, 1),
              width: 2.0, // Adjust the border width as needed
            ),
          ),
          child: const Icon(
            Icons.business,
            color: const Color.fromRGBO(255, 218, 185, 1),
            size: 40,
          ),
        ),
      ),
      const SizedBox(height: 8), // Adjust the spacing between the icon and text
      const Text(
        'Business',
        style: TextStyle(
          color: Color.fromRGBO(255, 218, 185, 1),
          fontSize: 16,
          fontWeight: FontWeight.bold,
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
class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 3.0;

    Path path = Path();
    double startY = size.height / 2; // Centered vertically

    path.moveTo(size.width * 0.5, startY); // Adjusted starting position

    // Adjusted control points for the cubic bezier curve
    path.relativeCubicTo(10, 50, size.width * 0.3, 50, size.width * 0.25, 150);

    path = ArrowPath.addTip(path, isAdjusted: true);
    canvas.drawPath(path, paint..color = const Color.fromRGBO(174, 217, 224, 1));

    const TextSpan textSpan = TextSpan(
      style: TextStyle(color: const Color.fromRGBO(174, 217, 224, 1)),
    );
    final TextPainter textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.2, 572)); // Adjusted text position
  }

  @override
  bool shouldRepaint(ArrowPainter oldDelegate) => false;
}
class ArrowPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 3.0;

    Path path = Path();
    double startY = size.height / 2; // Centered vertically

    path.moveTo(size.width * 0.5, startY); // Adjusted starting position

    // Adjusted control points for the cubic bezier curve
    path.relativeCubicTo(10, 50, size.width * 0.3, 50, size.width * 0.25, 150);

    path = ArrowPath.addTip(path, isAdjusted: true);

    // Flip the arrow horizontally (to the left)
    canvas.translate(size.width, 0);
    canvas.scale(-1.0, 1.0);

    canvas.drawPath(path, paint..color = Color.fromRGBO(255, 218, 185, 1));

    const TextSpan textSpan = TextSpan(
      style: TextStyle(color: Color.fromRGBO(255, 218, 185, 1)),
    );
    final TextPainter textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.2, 572)); // Adjusted text position
  }

  @override
  bool shouldRepaint(ArrowPainter oldDelegate) => false;
}