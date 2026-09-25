import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentValue = 50;

  // Tween Animation
  // Starting value & ending  value
  // 1...............10

  // ripple effect
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimateGradient(
        primaryColors: const [Colors.blue, Colors.pinkAccent, Colors.white],
        secondaryColors: const [Colors.black, Colors.blueAccent, Colors.white],
        child: Center(
          child: Column(
            children: [

              // TweenAnimationBuilder(
              //   tween: Tween<double>(begin:0, end: 300),
              //   duration: Duration(seconds: 6),
              //   builder: (context, value, child) {
              //     print(value);
              //     return InkWell(
              //       onTap: (){
              //
              //       },
              //       child: Column(
              //         children: [
              //           for (int i = 0;i<17;i++)
              //           Row(
              //             children: [
              //               for (int i = 0;i<8;i++)
              //                 Container(
              //                   width: value,
              //                   height: value,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),
              //                   ),
              //                 ),
              //             ],
              //           )
              //
              //         ],
              //       )
              //     );
              //   },
              // )

              SizedBox(height: 300,),
              RippleAnimation(
                child: CircleAvatar(
                  minRadius: 75,
                  maxRadius: 75,
                  backgroundImage: AssetImage("assets/google_icon.png"),
                ),
                color: Colors.white,
                delay: const Duration(milliseconds: 600),
                repeat: true,
                minRadius: 75,
                maxRadius: 200,
                ripplesCount: 4,
                duration: const Duration(milliseconds: 600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
