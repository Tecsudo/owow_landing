import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.width,
    required this.aboutUsKey,
    required this.servicesKey,
    required this.contactUsKey,
    required this.caseStudyKey,
    required this.homeKey,
    required this.careerKey,
    required this.scrollController,
  });
  final double width;
  final GlobalKey aboutUsKey;
  final GlobalKey servicesKey;
  final GlobalKey caseStudyKey;
  final GlobalKey contactUsKey;
  final GlobalKey homeKey;
  final GlobalKey careerKey;
  final ScrollController scrollController;

  void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double y = position.dy;
    scrollController.animateTo(y,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Widget navBarRow = Stack(children: [
      Padding(
        padding: EdgeInsets.only(left: width * 0.04),
        child: const Text(
          'O wOW!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      /* 
      onTap: () => scrollToWidgetByKey(homeKey),
       */
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          NavBarItem(
            text: 'About Us',
            onTap: () => scrollToWidgetByKey(aboutUsKey),
          ),
          NavBarItem(
            text: 'Services',
            onTap: () => scrollToWidgetByKey(servicesKey),
          ),
          NavBarItem(
            text: 'Case Studies',
            onTap: () => scrollToWidgetByKey(caseStudyKey),
          ),
          NavBarItem(
            text: 'Contact Us',
            onTap: () => scrollToWidgetByKey(contactUsKey),
          ),
          NavBarItem(
            text: 'Careers',
            onTap: () => scrollToWidgetByKey(careerKey),
          ),
          NavBarItem(
            text: 'GR Generator',
            onTap: () {},
          ),
          const SizedBox(width: 20),
        ],
      ),
    ]);
    return Container(
      height: 80.0,
      margin: const EdgeInsets.only(top: 40.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: navBarRow,
    );
  }
}

class NavigationItem extends StatelessWidget {
  final String title;

  const NavigationItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String text;
  final Function onTap;
  late final RxBool isHighlight;
  NavBarItem({required this.text, required this.onTap, super.key}) {
    isHighlight = false.obs;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (value) {
        isHighlight.value = true;
      },
      onExit: (value) {
        isHighlight.value = false;
      },
      child: ObxValue<RxBool>((data) {
        return InkWell(
          splashColor: Colors.white60,
          onTap: () => onTap(),
          child: Container(
            height: 40.0,
            width: 100,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 6,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: data.value ? Colors.black : Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                data.value
                    ? Container(
                        width: 40,
                        height: 1,
                        color: Colors.black,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        );
      }, isHighlight),
    );
  }
}
