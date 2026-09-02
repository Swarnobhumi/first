import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "What'sApp",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
             AnimatedContainer(
               duration: Duration(milliseconds: 400),
               width: width,
               height: height,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.blue
               ),
             ),
            SizedBox(height: 100,),

            ElevatedButton(onPressed: (){
              // backend code
              setState(() {
                //        false
                width = width==250?100:250;
                height = height==200?100:200;
              });

            }, child: Text("Press me"))

          ],
        ),
      )

    );
  }
}
