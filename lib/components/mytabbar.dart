// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key, required this.tabOptions});
  final List tabOptions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicatorColor: Colors.grey[400],
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          tabs: [
            Text(tabOptions[0][0]),
            Text(tabOptions[1][0]),
            Text(tabOptions[2][0]),
          ],
        ),
        Expanded(
            child: TabBarView(
          children: [tabOptions[0][1], tabOptions[1][1], tabOptions[2][1]],
        ))
      ],
    );
  }
}
