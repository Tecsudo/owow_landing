import 'package:flutter/material.dart';

import '../../../core/widget/word_logo.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Column(
            children: [
              const Spacer(),
              Align(
                alignment: Alignment.topLeft,
                child: WordLogo(
                  screenSize: screenSize,
                  logoColor: Colors.white,
                  // logoColor: const Color(0xFFFF8E49),
                ),
              ),
              Center(
                child: Container(
                  width: screenSize.width * .5,
                  margin: EdgeInsets.symmetric(
                    vertical: screenSize.height * .03,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Work',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Services',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'News',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Culture',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Offices',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Privacy Notice & Terms of Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Center(
                child: Container(
                    width: screenSize.width * .2,
                    margin: EdgeInsets.symmetric(
                      vertical: screenSize.height * .03,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.facebook, size: 50),
                        Icon(Icons.facebook, size: 50),
                        Icon(Icons.facebook, size: 50),
                        Icon(Icons.facebook, size: 50),
                        Icon(Icons.facebook, size: 50),
                      ],
                    )),
              ),
              const Text(
                '© 2023 ALL Rights Reserved',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              )
            ],
          ),
        ));
  }
}
