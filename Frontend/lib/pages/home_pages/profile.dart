import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _dateofbirthController = TextEditingController();
  DateTime _dateTime = DateTime.now();

  void _showDataPicker() async {
    await showDatePicker(
            context: context,
            initialDate: _dateTime,
            firstDate: DateTime(1900),
            lastDate: DateTime.now())
        .then(
      (value) {
        if (value != null) {
          setState(
            () {
              _dateTime = value;
              _dateofbirthController.text =
                  "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}";
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: 430,
        height: 932,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
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
            ),
            const Positioned(
              left: 125,
              top: 100,
              child: Text(
                'My Profile',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 30,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              top: 160.0,
              left: 115.0,
              child: Stack(children: <Widget>[
                const CircleAvatar(
                  radius: 90.0,
                  backgroundImage:
                      AssetImage('assets/profile_placeholder.webp'),
                ),
                Positioned(
                  bottom: -6,
                  right: 30.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 28,
                    ),
                    color: const Color.fromARGB(225, 255, 218, 185),
                  ),
                ),
              ]),
            ),
            Positioned(
              top: 370,
              left: screenSize.width * 0.055,
              child: SizedBox(
                width: screenSize.width * 0.43,
                height: screenSize.height * 0.07,
                child: TextField(
                  controller: _firstnameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(175, 174, 217, 224),
                    ),
                    hintText: '\t\tFirst Name',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 11.0,
                      horizontal: 16.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(175, 174, 217, 224),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 370,
              left: screenSize.width * 0.503,
              child: SizedBox(
                width: screenSize.width * 0.45,
                height: screenSize.height * 0.07,
                child: TextField(
                  controller: _lastnameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(175, 174, 217, 224),
                    ),
                    hintText: '\t\tLast Name',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 11.0,
                      horizontal: 16.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(175, 174, 217, 224),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 450,
              left: screenSize.width * 0.055,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.07,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Color.fromARGB(225, 255, 218, 185),
                    ),
                    hintText: '\t\tEmail',
                    hintStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 11.0, horizontal: 16.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(225, 255, 218, 185)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: screenSize.height * 0.62,
                left: screenSize.width * 0.056,
                child: SizedBox(
                  width: screenSize.width * 0.9,
                  height: screenSize.height * 0.07,
                  child: TextField(
                    controller: _phonenumberController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Color.fromARGB(175, 174, 217, 224),
                      ),
                      hintText: '\t\tPhone Number',
                      hintStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 11.0, horizontal: 16.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(175, 174, 217, 224),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                )),
            Positioned(
              top: screenSize.height * 0.71,
              left: screenSize.width * 0.056,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.07,
                child: TextField(
                  readOnly: true,
                  onTap: _showDataPicker,
                  controller: _dateofbirthController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.date_range,
                      color: Color.fromARGB(225, 255, 218, 185),
                    ),
                    hintText: '\t\tDate of Birth',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 11.0,
                      horizontal: 16.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(225, 255, 218, 185),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.8,
              left: screenSize.width * 0.25,
              width: screenSize.width * 0.5,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Perform the logic for the reset pawssword
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: const Color.fromARGB(175, 174, 217, 224),
                ),
                child: const Text(
                  'Save',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Intel',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
