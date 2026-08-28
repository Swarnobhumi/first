import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
               width: 200,
               height: 200,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.blue
               ),
             ),

          ],
        ),
      )

    );
  }
}
