import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentsWidget{
  Widget studentsgrid( {
    String? id,
  }){
 return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 17, 111, 139),
                     elevation: 0,),
      body: Stack(
        children: [
        Container(color:const Color.fromARGB(255, 17, 111, 139) ,
          child: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:   [ 
              const SizedBox(height: 45,),
              Text('Name',style: GoogleFonts.aclonica(fontSize: 30,color: Colors.white),),
              Text('School',style: GoogleFonts.aboreto(fontSize: 20,color: Colors.white),),
               ],
              ),
          ),
        ), 
       ]
      ),
    );
  }
}