import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    super.key,
    required this.width,
    required this.aboutUsKey,
    required this.servicesKey,
    required this.contactUsKey,
    required this.scrollController,
    // this.collapsableHeight,
  });

  final double width;
  final GlobalKey aboutUsKey;
  final GlobalKey servicesKey;
  final GlobalKey contactUsKey;
  final ScrollController scrollController;
  // final RxDouble collapsableHeight;

  void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double y = position.dy;
    scrollController.animateTo(y,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
          const NavigationItem(title: 'About Us'),
          const NavigationItem(title: 'Services'),
          const NavigationItem(title: 'Case Studies'),
          const NavigationItem(title: 'Contact Us'),
          const NavigationItem(title: 'Careers'),
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
