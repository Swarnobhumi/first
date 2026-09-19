import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimateGradient(
        primaryColors: const [Colors.blue, Colors.pinkAccent, Colors.white],
        secondaryColors: const [Colors.black, Colors.blueAccent, Colors.white],
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),

              TweenAnimationBuilder(
                  tween: Tween<double>(begin: 50, end: currentValue),
                  duration: Duration(seconds: 1),
                  builder: (context, value, child) {
                    print(value);
                     return InkWell(
                       onTap: (){
                         setState(() {
                           currentValue = currentValue==50?250:50; //toggle function
                         });
                       },
                       child: Container(
                         width: value,
                         height: value,
                         color: Colors.orange,
                       ),
                     );
                  },
              )


            ],
          ),
        ),
      ),
    );
  }
}
