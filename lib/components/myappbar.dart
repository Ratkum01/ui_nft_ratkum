import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;
  MyAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              title,
              
              style: GoogleFonts.anton(fontSize: 50)
              //  TextStyle(fontSize: 60),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 5)),
              child: Icon(
                Icons.search,
                size: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
