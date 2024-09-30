import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [Icon(Icons.male, size:150,),
                      const Text("Male")],
                    ),
                  ),
                  Spacer(), // meken wenne me dheka maddata spacer ekak dhanawa
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [Icon(Icons.female, size: 150,), Text("FeMil")],
                    ),
                  )
                ],
              )
            ],
          )),
    ));
  }
}
