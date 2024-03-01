import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadGoogleFonts extends StatelessWidget {
  List<dynamic> fonts = [
    GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
    GoogleFonts.robotoMono(fontWeight: FontWeight.w500, fontSize: 20),
    GoogleFonts.oswald(fontWeight: FontWeight.w500, fontSize: 20),
    GoogleFonts.mukta(fontWeight: FontWeight.w500, fontSize: 20),
    GoogleFonts.kanit(fontWeight: FontWeight.w500, fontSize: 20),
    GoogleFonts.quicksand(fontWeight: FontWeight.w500, fontSize: 20),
    GoogleFonts.manrope(fontWeight: FontWeight.w500, fontSize: 20),
    GoogleFonts.ptSerif(fontWeight: FontWeight.w500, fontSize: 20)
  ];

  LoadGoogleFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Google Fonts",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Expanded(
        child: Container(
          child: ListView.builder(
            itemCount: fonts.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(
                    "Hello World",
                    style: fonts[index],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
