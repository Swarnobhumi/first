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
          SizedBox(height: 60,),
          Text("Login", style: TextStyle(fontSize: 28),),

            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                 labelText: "Enter your name",
                  suffixText: "@gmail.com"
                ),
              ),
            )

          ],
        ),
      )

    );
  }
}
