import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width = 100;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  AnimateGradient(
          primaryColors: const [
            Colors.blue,
            Colors.pinkAccent,
            Colors.white,
          ],
          secondaryColors: const [
            Colors.black,
            Colors.blueAccent,
            Colors.white,
          ],
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),

                InkWell(
                 onTap: (){
                   setState(() {
                     if(isPressed==false){
                       width = 40;
                       isPressed = true;
                     }else{
                       width = 100;
                       isPressed = false;
                     }
                   });

                 },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: width,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isPressed?Colors.transparent:Colors.blue
                    ),
                    child: Center(child: isPressed?CircularProgressIndicator(color: Colors.white,):Text("Login")),
                  ),
                ),


              ],
            ),
          )
      ),
    );
  }
}