import 'package:flutter/material.dart';
import 'package:flutter_web_test/homepage.dart';

class WebMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        // Restrict minimum width to 500px
        if (screenWidth < 500) {
          screenWidth = 500;
        }

        return Scaffold(
          body: Container(
            width: screenWidth,
            height: screenHeight,
            color: Colors
                .yellow[100], // Light yellow background for the leftover parts
            child: Center(
              child: Container(
                width: 500, // Fixed width for the mobile UI
                height: screenHeight,
                color: Colors.white, // Background color of the mobile UI
                child: MyHomePage(
                  title: "Kofluence",
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
