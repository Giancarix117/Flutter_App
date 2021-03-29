import 'package:flutter/material.dart';
import 'package:specialized_nutrition/ui/home/home_page.dart';

class SpecializedNutrition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
