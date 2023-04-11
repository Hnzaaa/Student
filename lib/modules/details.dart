import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:student/modules/login.dart';  


class Detailspage extends StatefulWidget{
  const Detailspage({super.key});

  @override
  State<Detailspage> createState() => DetailspageState();

}

class DetailspageState  extends State<Detailspage>{

       int _selectedIndex = 0;
      //  static const TextStyle optionStyle =
      // TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
       static  final List<Widget> _widgetOptions = <Widget>[
        const Page1(),
        const Page2(),
        const Page3(),
        const Page4(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  //1
  body: Stack(
    children: [
      CustomScrollView(
      slivers: <Widget>[
        //2
        SliverAppBar(
          elevation: 10,
          pinned: true,
          snap: true,
          floating: true, 
          backgroundColor: const Color.fromARGB(255, 17, 111, 139),
          automaticallyImplyLeading: false, 
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            expandedTitleScale: 2,
            titlePadding:   const EdgeInsets.only(left: 15),
            // centerTitle: false ,
            title:   Text('NAME',style: GoogleFonts.caladea(color: Colors.white,fontWeight: FontWeight.bold),
            // textScaleFactor: 1,
            ),
            background: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color:const Color.fromARGB(255, 17, 111, 139) ,), 
             child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40,),
                      Center(
                      child: Text('S T U D E N T    P R O F I L E',
                        style: GoogleFonts.caesarDressing(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                        )
                      ),
                    const SizedBox(height:5),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('image',
                            style: TextStyle(color: Colors.white),),
                          const SizedBox(width: 60,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:   [
                              Text('',
                                style:  GoogleFonts.aBeeZee(color: Colors.white)),
                              const SizedBox(height: 30,),
                              Text('Reg No',
                               style: GoogleFonts.aBeeZee(color: Colors.white),),
                              const SizedBox(height: 30,),
                              Text('School',      
                               style: GoogleFonts.aBeeZee(color: Colors.white),),
                              const Text(''),
                            ],
                          ), 
                        ],
                      ),
                    ),
                    const SizedBox(height: 18,),
                  ],
                ),
              ),
            ),
          ),
          ),
        ),
      
      SliverFillRemaining(
        child: _widgetOptions.elementAt(_selectedIndex),
      )
        //3
        // SliverList(
        //   delegate: 
        //   // SliverChildListDelegate(
        //   //       [
        //   //         Container(color: Colors.white, height: 150.0),
        //   //         Container(color: Colors.purple, height: 150.0),
        //   //         Container(color: Colors.green, height: 150.0),
        //   //         Container(color: Colors.white, height: 150.0),
        //   //         Container(color: Colors.purple, height: 150.0),
        //   //         Container(color: Colors.green, height: 150.0),
        //   //       ],
        //   //     ),
        //   SliverChildBuilderDelegate(
        //     (BuildContext context, int index)        
        //     {
        //       return 
        //       // ListTile(
        //       //   leading: 
        //         // SingleChildScrollView(
        //         //   child: Container(
        //         //     height: MediaQuery.of(context).size.height,
        //         //     width: MediaQuery.of(context).size.width, 
        //         //     padding: const EdgeInsets.all(8),
        //         //     child:Center(
        //                 //  child:
        //                   _widgetOptions.elementAt(_selectedIndex);
        //         //          ),
        //         //     // child: Placeholder()
        //         //       ),
        //         // ); 
        //       }, 
        //    ),
        //  ),

       ],
      ), 
     ]
    ),
   
      bottomNavigationBar: Container(
        decoration: BoxDecoration(shape: BoxShape.rectangle,
          color: const Color.fromARGB(255, 17, 111, 139),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 5,
              activeColor: const Color.fromARGB(255, 17, 111, 139),
              iconSize: 23,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.white,
              tabs: const [
                GButton(
                  // onPressed: ,
                  icon: LineIcons.checkSquare,
                  text: 'Attendance',
                ),
                GButton(
                  icon: LineIcons.book,
                  text: 'Marks',
                ),
                GButton(
                  icon: LineIcons.inbox,
                  text: 'Remarks',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                }
               );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 196, 223, 221),
      child: const Center(
        child: Text(
          "Attendance",
          style: TextStyle(
            color: Color.fromARGB(255, 27, 73, 94),
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 196, 223, 221),
      child: const Center(
        child: Text(
          "Marks",
          style: TextStyle(
            color: Color.fromARGB(255, 27, 73, 94),
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 196, 223, 221),
      child: const Center(
        child: Text(
          "Remarks",
          style: TextStyle(
            color: Color.fromARGB(255, 27, 73, 94),
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 196, 223, 221),
      child: const Center(
        child: Text(
          "Profile",
          style: TextStyle(
            color: Color.fromARGB(255, 27, 73, 94),
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}