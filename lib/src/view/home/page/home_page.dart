import 'package:flutter/material.dart';
import 'package:owow/core/constant/size_constant.dart';
import 'package:owow/core/constant/ui_constant.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';
import 'package:responsive_framework/max_width_box.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../core/constant/gap_constant.dart';
import '../../../../core/util/launch_url.dart';
import '../../common/toolbar_text_widget.dart';

import '../layouts/about_us_layout.dart';
import '../layouts/career_layout.dart';
import '../layouts/case_study_layout.dart';
import '../layouts/contact_us_layout.dart';
import '../layouts/header_layout.dart';
import '../layouts/services_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ItemScrollController _itemScrollController = ItemScrollController();

  Size screenSize = Config.screenSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(context),
      endDrawer: _drawer(context),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: false,
      titleSpacing: 32,
      titleTextStyle: Theme.of(context).textTheme.titleSmall,
      scrolledUnderElevation: 4,
      title: _appBarContent(context),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: <Color>[Color(0xFFFF6B51), Color(0xFFFF9148)]),
        ),
      ),
    );
  }

  Widget _appBarContent(BuildContext context) {
    return Center(
      child: MaxWidthBox(
        maxWidth: MaxSizeConstant.maxWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => _changeToIndex(0),
              child: Text(
                'O wOW!',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Poppins',
                    ),
              ),
            ),
            if (context.isDisplayLargeThanTablet) _toolbarItems(),
          ],
        ),
      ),
    );
  }

  Widget _toolbarItems() {
    return Row(
      children: [
        ..._generateToolbarItem().map(
          (e) => Padding(
            padding: const EdgeInsets.only(left: 24),
            child: ToolbarTextWidget(text: e.text, onTap: e.onTap),
          ),
        ),
      ],
    );
  }

  List<_ToolbarItem> _generateToolbarItem() {
    return [
      _ToolbarItem(text: 'About Us', onTap: () => _changeToIndex(1)),
      _ToolbarItem(text: 'Services', onTap: () => _changeToIndex(2)),
      _ToolbarItem(text: 'Case Studies', onTap: () => _changeToIndex(3)),
      _ToolbarItem(text: 'Contact Us', onTap: () => _changeToIndex(4)),
      _ToolbarItem(text: 'Careers', onTap: () => _changeToIndex(5)),
      _ToolbarItem(
          text: 'GR Generator',
          onTap: () => _launchUrl('https://owowapp.tecsudo.com/#/welcome')),
    ];
  }

  void _launchUrl(String url) {
    LaunchUtil.launchWeb(url);
  }

  void _changeToIndex(int i) {
    _itemScrollController.scrollTo(
      index: i,
      duration: const Duration(milliseconds: 300),
    );
  }

  Widget? _drawer(BuildContext context) {
    if (context.isDisplayLargeThanTablet) return null;

    return _HomeDrawer(
      items: _generateToolbarItem(),
    );
  }

  Widget _body(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemCount: _bodyItems.length,
      itemBuilder: (context, index) => _bodyItems[index],
      itemScrollController: _itemScrollController,
    );
  }

  List<Widget> get _bodyItems => [
        HomeHeaderLayout(screenSize: screenSize),
        AboutUsLayout(screenSize: screenSize),
        ServicesLayout(screenSize: screenSize),
        const CaseStudyLayout(),
        ContactUsLayout(screenSize: screenSize),
        CareerLayout(screenSize: screenSize),
      ];
}

class _HomeDrawer extends StatelessWidget {
  final List<_ToolbarItem> items;

  const _HomeDrawer({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          GapConstant.h16,
          ...items.map(
            (e) => ListTile(
              title: Text(e.text),
              onTap: () => _onItemClicked(e, context),
            ),
          ),
          GapConstant.h8,
          const Divider(
            thickness: 0.4,
          ),
          GapConstant.h8,
        ],
      ),
    );
  }

  void _onItemClicked(_ToolbarItem e, BuildContext context) {
    Scaffold.of(context).closeEndDrawer();
    e.onTap?.call();
  }
}

class _ToolbarItem {
  final String text;
  final GestureTapCallback? onTap;

  _ToolbarItem({
    required this.text,
    this.onTap,
  });
}
