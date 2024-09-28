import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child:  Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Male Icon"), 
                  Text("Mil")
                ],
              ),
              Column(
                children: [
                  Text("FeMale Icon"), 
                  Text("FeMil")
                ],
              )
            ],
          )
        ],
      )
    );
  }
}