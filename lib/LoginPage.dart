import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double width = 250, height = 200;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(20),
            colors: [Color(0xffF0F1D7), Color(0x00C99A00)],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              // SizedBox(height: 100,),
              //  AnimatedContainer(
              //    duration: Duration(milliseconds: 400),
              //    width: width,
              //    height: height,
              //    decoration: BoxDecoration(
              //      borderRadius: BorderRadius.circular(10),
              //      color: Colors.blue
              //    ),
              //  ),
              // SizedBox(height: 100,),
              //
              // ElevatedButton(onPressed: (){
              //   // backend code
              //   setState(() {
              //     //        false
              //     width = width==250?100:250;
              //     height = height==200?100:200;
              //   });
              //
              // }, child: Text("Press me"))

              // Expanded(
              //   flex: 4,
              //   child: Container(color: Colors.red,),
              // ),
              // Expanded(
              //   child: Container(color: Colors.brown,),
              // ),

              // Container(
              //   margin: EdgeInsets.all(40),
              //   width: 300,
              //   height: 200,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(40),
              //     color: Colors.orange,
              //     boxShadow: [
              //       BoxShadow(color: Colors.blue, blurRadius: 20, spreadRadius: 15, offset: Offset(20, 0)),
              //       BoxShadow(color: Colors.brown, blurRadius: 20, spreadRadius: 15, offset: Offset(-30, 0)),
              //     ]
              //   ),
              // )
              SizedBox(height: 60),

              // Card(
              //   elevation: 20,
              //   shadowColor: Colors.blue,
              //   color: Colors.orange,
              //   child: SizedBox(
              //     width: 200,
              //     height: 150,
              //
              //   ),
              // )
              Image.asset("assets/icon.png", scale: 2),
              SizedBox(height: 40),
              Text(
                "Welcome Back To Tasker",
                style: GoogleFonts.roboto(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 18,),
              Text(
                "Enter Valid User Name & password\n to continue",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
