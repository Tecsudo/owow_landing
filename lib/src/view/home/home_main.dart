import 'package:flutter/material.dart';
import 'package:owow/core/constant/ui_constant.dart';

import 'components/top.dart';
import 'components/end.dart';
import 'components/body.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  late final GlobalKey aboutUsKey;
  late final GlobalKey servicesKey;
  late final GlobalKey caseStudyKey;
  late final GlobalKey contactUsKey;
  late final GlobalKey homeKey;
  late final GlobalKey careerKey;
  late final ScrollController scrollController;

  _initializeGlobalKeys() {
    aboutUsKey = GlobalKey();
    servicesKey = GlobalKey();
    caseStudyKey = GlobalKey();
    contactUsKey = GlobalKey();
    homeKey = GlobalKey();
    careerKey = GlobalKey();
    scrollController = ScrollController();
  }

  Size screenSize = Config.screenSize;

  @override
  void initState() {
    _initializeGlobalKeys();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            PageStart(
              aboutUsKey: aboutUsKey,
              servicesKey: servicesKey,
              caseStudyKey: caseStudyKey,
              contactUsKey: contactUsKey,
              homeKey: homeKey,
              careerKey: careerKey,
              scrollController: scrollController,
              screenSize: screenSize,
            ),
            PageBody(
              aboutUsKey: aboutUsKey,
              servicesKey: servicesKey,
              caseStudyKey: caseStudyKey,
              contactUsKey: contactUsKey,
              screenSize: screenSize,
              scrollController: scrollController,
            ),
            PageEnding(
              careerKey: careerKey,
              screenSize: screenSize,
              scrollController: scrollController,
            ),
          ],
        ),
      ),
    );
  }
}
