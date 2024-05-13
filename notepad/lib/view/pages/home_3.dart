import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:notepad/view/pages/notepad.dart';
import 'package:sizer/sizer.dart';

class Home_3 extends StatelessWidget {
  const Home_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: 
      Column(
        children: [
          SizedBox(height: 10.h,),
          Text(" WELCOME", style: GoogleFonts.alike(color: Colors.white, fontSize: 26.sp, fontWeight: FontWeight.w500),),
           Text(" TO ", style: GoogleFonts.alike(color: Colors.white, fontSize: 26.sp, fontWeight: FontWeight.w500),),
            Text(" NOTEE APP", style: GoogleFonts.caesarDressing(color: Colors.white, fontSize: 36.sp, fontWeight: FontWeight.w500),),

         Center(
           child: Image.asset(
            'images/welcome.png', width:100.w,height: 50.h,
            
           ),
           
         ),
         FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>Notepad()));
         },
         child: Icon(Icons.arrow_forward),),

                
                
                
               Text("Let us remind you.", style: GoogleFonts.abel(color: Colors.white),)



        ],
      ),
    );
  }}