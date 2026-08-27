import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green, width: 3)
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                 labelText: "Enter your gmail",
                  suffixText: "@gmail.com"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                enabled: true,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                obscuringCharacter: "π",
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue, width: 5)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.purple, width: 3)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                 labelText: "Enter your password",
                ),
              ),
            )

          ],
        ),
      )

    );
  }
}
