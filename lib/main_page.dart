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
          color: const Color.fromARGB(255, 229, 242, 255),
          child: const Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 150,
                        ),
                        Text("Male")
                      ],
                    ),
                  ),
                  Spacer(), // meken wenne me dheka maddata spacer ekak dhanawa
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 150,
                        ),
                        Text("FeMil")
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Height"),
                        Text(
                          "176",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 0, 0),
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.add,
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.remove),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(), // meken wenne me dheka maddata spacer ekak dhanawa
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Weight"),
                        Text(
                          "76",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 0, 0),
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.add,
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.remove),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [Text("BMI"), Text("22.00")],
              )
            ],
          )),
    ));
  }
}
