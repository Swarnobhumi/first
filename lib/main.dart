import 'package:first/listview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:listview(),
    );
  }
}


