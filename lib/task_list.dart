import 'package:feb_29/keyboard_height.dart';
import 'package:feb_29/screenSize_using_mediaQuery.dart';
import 'package:flutter/material.dart';

import 'loading_fonts.dart';

class TaskList extends StatelessWidget {
   TaskList({super.key});

  List<String> taskNames = ['Load Google Fonts','Screen Size Using MediaQuery','Keyboard Height Using MediaQuery'];
  List<dynamic> pages = [LoadGoogleFonts(),const ScreenSize(),const KeyboardHeight()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(3, (index) =>  ElevatedButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pages[index],
                    ),
                  ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  backgroundColor: Colors.purple.shade700,
                  foregroundColor: Colors.white),
              child:  Text(taskNames[index])),)
        ),
      ),
    );
  }
}
