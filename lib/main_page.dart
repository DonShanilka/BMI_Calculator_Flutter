import 'package:flutter/material.dart';
import 'package:flutter_first_project/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int heigt = 100;
  int weight = 60;

  // late kiyanne passe welawaka call karanna // value eka passe dhenne
  late double bmi = calculateBMI(height: heigt, weight: weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
                const Row(
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
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Text("Height"),
                          Text(
                            "$heigt",
                            style: kLableStyle,
                          ),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    heigt++;
                                    bmi = calculateBMI(
                                        height: heigt, weight: weight);
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (heigt >= 10) heigt--;
                                    bmi = calculateBMI(
                                        height: heigt, weight: weight);
                                  });
                                },
                                child: const Icon(Icons.remove),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(), // meken wenne me dheka maddata spacer ekak dhanawa
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Text("Weight"),
                          Text(
                            "$weight",
                            style: kLableStyle,
                          ),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                    bmi = calculateBMI(
                                        height: heigt, weight: weight);
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight >= 10) weight--;
                                    bmi = calculateBMI(
                                        height: heigt, weight: weight);
                                  });
                                },
                                child: const Icon(Icons.remove),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    const Text("BMI"),
                    Text(" ${bmi.toStringAsFixed(2)}", style: kOutPutColor)
                  ],
                )
              ],
            )),
      ),
    ));
  }

  double calculateBMI({required height, required int weight}) {
    return (weight / (height * height)) * 10000;
  }

  static String getResult(bmi) {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
}
