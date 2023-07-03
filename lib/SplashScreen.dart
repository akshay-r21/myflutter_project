import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(125, 212, 11, 75).withOpacity(0.4),
            Colors.red,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const SizedBox(height: 60),
              SizedBox(
                height: 350,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("Assets/Icons/Icons.jpg",
                          height: 100, width: 100),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Fresh Foods",
                          style: GoogleFonts.dancingScript(
                              fontSize: 37, color: Colors.white),
                        ),
                      ),
                      Text(
                        "tasty & Fresh",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("""
Assets/Images/fruits_image.png""")
              ],
            ),
          )
        ],
      ),
    ));
  }
}
