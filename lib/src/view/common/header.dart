import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/ui_constant.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveNavBar(
      screenWidth: Config.screenSize.height,
      title: const Text(
        'O wOW!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      ),
      navBarItems: [],
    );
  }
}


/* 
SizedBox(
      height: Config.screenSize.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'O wOW!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Icon(
            Icons.home,
            color: Colors.white,
          ),
          const Text(
            'About Us',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Services',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Case Studies',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Contact Us',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Careers',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              side: const BorderSide(color: Colors.black, width: 2),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10)),
              // shadowColor: Colors.black.withOpacity(.3),
              // elevation: 4,
            ),
            child: const Text(
              "QR Generator",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );

 */