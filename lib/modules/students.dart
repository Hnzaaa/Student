import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/modules/details.dart'; 

class Studentspage extends StatefulWidget{
  const Studentspage({super.key});

  @override
  State<Studentspage> createState() => StudentspageState();

}

class StudentspageState extends State<Studentspage> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        backgroundColor: const Color.fromARGB(255, 17, 111, 139),
        title: Text('S C H O L A R S',style: GoogleFonts.nanumGothic
        (color: Colors.white,fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
       ),
      body: Stack(
        children:[ Padding(
          padding: const EdgeInsets.only(top:20.0,left: 10,right: 10,bottom: 20),
          child: SizedBox(
            height: 200,
            child: InkWell(
              onTap: () => {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=>const Detailspage()))},
                child: ListTile(                                                         //Listview builder
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),),
                  tileColor: const Color.fromARGB(255, 74, 142, 163),
                  title: Center(
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
            ),
          ),
        ),
        const Positioned(left: 0,right: 0,top: 0,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(radius: 45,backgroundColor: Color.fromARGB(255, 211, 210, 210),),
         )
        )
       ]
      ),
    );
  }
}