import 'package:flutter/material.dart';

import 'components/top.dart';
import 'components/end.dart';
import 'components/body.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: const [
            PageStart(),
            PageBody(),
            PageEnding(),
          ],
        ),
      ),
    );
  }
}
