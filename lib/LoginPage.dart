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

      body: Padding(
        padding: const EdgeInsets.only(top: 200, bottom: 200),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                   child: Image.asset("assets/asok.png"),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
      )

    );
  }
}
