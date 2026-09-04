import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double width = 250, height = 200;
  bool hidePass = true;
  Icon passIcon = Icon(Icons.remove_red_eye);
  bool isChecked = false;
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
              SizedBox(height: 18),
              Text(
                "Enter Valid User Name & password\n to continue",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Email Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Password"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    obscureText: hidePass,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            if(hidePass==true){
                              hidePass = false;
                              passIcon = Icon(Icons.remove_red_eye_outlined);
                            }
                            else{
                              hidePass = true;
                              passIcon = Icon(Icons.remove_red_eye);
                            }
                          });
                        },

                        child: passIcon,
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),

                ),
              ),

              Row(
                children: [
                  SizedBox(width: 10,),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                      value: isChecked,
                      onChanged: (value) {
                         setState(() {
                           isChecked = value!;
                         });
                      },
                  ),
                  Text("Remember Me")
                ],
              ),

              SizedBox(height: 20,),
              Container(
                width: 340,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffffbd14),
                    borderRadius: BorderRadius.circular(40),
                ),
              child: Center(child: Text("Log In", style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600),)),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 150, height: 1,color: Colors.grey,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text("OR"),
                  ),
                  Container(width: 150, height: 1,color: Colors.grey,),

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: SignInButton(
                      padding: EdgeInsets.all(10),
                      Buttons.google,
                      onPressed: () {},
                      text: "Google",
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(width: 35,),
                  SizedBox(
                    width: 150,
                    child: SignInButton(
                      padding: EdgeInsets.all(17),
                      Buttons.apple,
                      onPressed: () {},
                      text: "Apple",
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Haven't any account ?"),
                  Text("  Sign Up", style: TextStyle(color: Colors.orangeAccent),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
