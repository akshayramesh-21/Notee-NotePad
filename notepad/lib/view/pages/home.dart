import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:notepad/view/pages/home_3.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 18.h,
          ),
          Center(
            child: Image.asset(
              'images/6.png',
              width: 50.w,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
              child: Text("KEEP YOUR MEMORIES",
                  style: GoogleFonts.abel(color: Colors.white, fontSize: 22.sp))),
          Center(
              child: Text("AND",
                  style: GoogleFonts.abel(color: Colors.white, fontSize: 22.sp))),
          Center(
              child: Text("CRAETIVE IDEAS WITH US",
                  style: GoogleFonts.abel(color: Colors.white, fontSize: 22.sp))),
          SizedBox(
            height: 3.h,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home_3()));
            },
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
