import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  const NftCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          )),
    );
  }
}
