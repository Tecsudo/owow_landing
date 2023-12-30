import 'package:flutter/material.dart';
import 'package:owow/core/constant/gap_constant.dart';
import 'package:owow/core/constant/size_constant.dart';
import 'package:owow/src/view/common/background.dart';

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
        child: HomeBackground(
          child: Column(
            children: [
              const Spacer(),
              const Align(
                alignment: Alignment.topLeft,
                child: WordLogo(
                  logoColor: Colors.white,
                ),
              ),
              Center(
                child: Container(
                  width: 500,
                  margin: const EdgeInsets.symmetric(
                    vertical: SizeConstant.p24,
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
                    width: 300,
                    margin: const EdgeInsets.symmetric(
                      vertical: SizeConstant.p24,
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
              GapConstant.h20,
            ],
          ),
        ));
  }
}
