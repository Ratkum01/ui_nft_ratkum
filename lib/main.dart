// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_nftapp_ratkum/components/mybottombar.dart';
import 'package:ui_nftapp_ratkum/components/mytabbar.dart';
import 'package:ui_nftapp_ratkum/pages/recenttab.dart';
import 'package:ui_nftapp_ratkum/pages/toptab.dart';
import 'package:ui_nftapp_ratkum/pages/trendingtab.dart';
import 'package:ui_nftapp_ratkum/theme/glass_box.dart';

import 'components/myappbar.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _searchButtonTapped() {}

  List tabOptions = [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBody:
            true, // логическое значение для прозрачной navigation button
        body: ListView(
          children: [
            MyAppBar(
              onTap: _searchButtonTapped,
              title: 'NFT IMAGES RatkuM',
            ),
            SizedBox(
              height: 600,
              child: MyTabbar(
                tabOptions: tabOptions,
              ),
            )
          ],
        ),
        bottomNavigationBar: GalasBox(
            child: MyBottomBar(index: _currentBottomIndex, onTap: _handleBuottomIndexChange)),
      ),
    );
  }

// bottom bar navigation
  int _currentBottomIndex = 0;

  void _handleBuottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }
}
