// ignore_for_file: prefer_const_constructors, sort_child_properties_last 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/modules/students.dart'; 

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
 

  final String title;

  @override
  State<LoginPage> createState() =>LoginPageState();
}

class LoginPageState extends State<LoginPage> {
     


 TextEditingController logincontroller=TextEditingController();
 String otpvalue = "";
 String? usertype;
  @override
  Widget build(BuildContext context) {
     
    return Scaffold( 
      body: Stack(
        children:[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/3.jpg',),
                fit: BoxFit.cover)
              ),
               ),
           Center(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                  Text('Welcome',style: TextStyle(color: Color.fromARGB(255, 17, 111, 139),
                    fontSize: 45,fontWeight: FontWeight.bold),), 
                  SizedBox(height: 40,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 200, 228, 236),), 
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [ 
                      TextFormField(
                        controller: logincontroller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                             borderSide: BorderSide(
                                color: Color.fromARGB(255, 17, 111, 139))),
                          labelText: 'Enter Mobile Number'
                        ),
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                    //     onTap: (){
                    //     if (logincontroller.text != '') {
                    //      //Checkmobile or email
                    //      RegExp numeric = RegExp(r'^-?[0-9]+$');
                    //      if (numeric.hasMatch(
                    //          (logincontroller.text)
                    //              .toString())) {
                    //        //Check_phone_number..
      
                    //        if (logincontroller
                    //                .text.length <
                    //            10) {
                    //          ScaffoldMessenger.of(context)
                    //              .showSnackBar(SnackBar(
                    //            content: SizedBox(
                    //              height: 20,
                    //              child: Column(
                    //                children: const [
                    //                  Text(
                    //                      'Mobile Number must contain 10 digit'),
                    //                ],
                    //              ),
                    //            ),
                    //          ));
                    //        } else {
                    //          if (logincontroller
                    //                  .text.length ==
                    //              10) {
                    //            Map body = {
                    //              'username':
                    //                  logincontroller.text
                    //                      .toString(),
                    //              'user_type': usertype.toString()
                    //            };
                    //            Repository().getloginotp(body: body).then((value) {
                    //              if (value.code == 200) {
                    //                ScaffoldMessenger.of(context)
                    //                    .showSnackBar(SnackBar(
                    //                  content: SizedBox(
                    //                    height: 20,
                    //                    child: Column(
                    //                      children: [
                    //                        Text((value.response
                    //                                ?.msg)
                    //                            .toString()),
                    //                      ],
                    //                    ),
                    //                  ),
                    //                ));
                    //              } else if (value.code == 404) {
                    //                ScaffoldMessenger.of(context)
                    //                    .showSnackBar(SnackBar(
                    //                  content: SizedBox(
                    //                    height: 20,
                    //                    child: Column(
                    //                      children: [
                    //                        Text((value.response
                    //                                ?.msg)
                    //                            .toString()),
                    //                      ],
                    //                    ),
                    //                  ),
                    //                ));
                    //              }
                    //            });
                    //          } else {
                    //            ScaffoldMessenger.of(context)
                    //                .showSnackBar(const SnackBar(
                    //                    content: SizedBox(
                    //              height: 20,
                    //              child: Text(
                    //                ('Enter valid phone number'),
                    //              ),
                    //            )));
                    //          }
                    //        }
      
                    //        //////
                    //      } 
                    //     //  else {
                    //     //    //Check_mail..
                    //     //    final emailregexp = RegExp(
                    //     //        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
      
                    //     //    if (emailregexp.hasMatch(
                    //     //        (logincontroller.text)
                    //     //            .toString())) {
                    //     //      Map body = {
                    //     //        'username':
                    //     //            logincontroller.text
                    //     //                .toString(),
                    //     //        'user_type': usertype.toString()
                    //     //      };
                    //     //      Repository()
                    //     //          .getloginotp(body: body)
                    //     //          .then((value) {
                    //     //        if (value.code == 200) {
                    //     //          setState(() {
                    //     //            issucces = true;
                    //     //          });
                    //     //          ScaffoldMessenger.of(context)
                    //     //              .showSnackBar(SnackBar(
                    //     //            content: SizedBox(
                    //     //              height: 20,
                    //     //              child: Column(
                    //     //                children: [
                    //     //                  Text((value
                    //     //                          .response?.msg)
                    //     //                      .toString()),
                    //     //                ],
                    //     //              ),
                    //     //            ),
                    //     //          ));
                    //     //        } else if (value.code == 404) {
                    //     //          ScaffoldMessenger.of(context)
                    //     //              .showSnackBar(SnackBar(
                    //     //            content: SizedBox(
                    //     //              height: 20,
                    //     //              child: Column(
                    //     //                children: [
                    //     //                  Text((value
                    //     //                          .response?.msg)
                    //     //                      .toString()),
                    //     //                ],
                    //     //              ),
                    //     //            ),
                    //     //          ));
                    //     //        }
                    //     //      });
                    //     //    } else {
                    //     //      ScaffoldMessenger.of(context)
                    //     //          .showSnackBar(SnackBar(
                    //     //        content: SizedBox(
                    //     //          height: 20,
                    //     //          child: Column(
                    //     //            children: const [
                    //     //              Text(
                    //     //                  "Please enter valid E-mail "),
                    //     //            ],
                    //     //          ),
                    //     //        ),
                    //     //      ));
                    //     //    }
                    //     //  }
                    //    } else {
                    //      ScaffoldMessenger.of(context)
                    //          .showSnackBar(SnackBar(
                    //        content: SizedBox(
                    //          height: 20,
                    //          child: Column(
                    //            children: const [
                    //              Text(
                    //                  "Phone number is required"),
                    //            ],
                    //          ),
                    //        ),
                    //      ));
                    //    }
                    //  },
                        child: const Text('Sent OTP',
                        style: TextStyle(color: Color.fromARGB(255, 17, 111, 139),
                        fontSize: 15),
                        )
                      ),
                      const SizedBox(height: 15,),
                      const TextField(
                         //   onSubmitted: (value){
                         //   setState(() 
                         //     otpvalue=value;
                         //   });
                         //  },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                             borderSide: BorderSide(
                                color: Color.fromARGB(255, 17, 111, 139)
                                )
                               ),
                          labelText: 'Enter OTP'
                        ),
                      ),
                      const SizedBox(height: 20,),
                      MaterialButton(
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => const Studentspage(),));
                       },
                      shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(12),  
                             ),
                       color: const Color.fromARGB(255, 17, 111, 139),
                       elevation: 15,
                       child: const Text('Submit',style: TextStyle(color: Colors.white,fontSize: 20),),),
                      ],
                      ),
                    ),
                  ),
                 ],
                ),
                
              ],
            ),
          ),
        ),
       ]
      ),
         
    );
  }
} 