import 'dart:math';

import 'package:flutter/material.dart';

String states(double res) {
  String category;

  switch (res) {
    case < 16:
      category = 'Severe Thinness';
      break;
    case < 18:
      category = 'Moderate Thinness';
      break;
    case < 18.5:
      category = 'Mild Thinness';
      break;
    case < 25:
      category = 'Normal';
      break;
    case < 30:
      category = 'Overweight';
      break;
    case < 35:
      category = 'Obese Class I';
      break;
    case < 40:
      category = 'Obese Class II';
      break;
    default:
      category = 'Obese Class III';
      break;
  }

  return category;
}

class firstscreen extends StatefulWidget {
  firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  int weight = 50;
  int height = 150;
  double bim = 0.0;
  String state = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
              child: Text(
            'BMI Calculator App',
            style: TextStyle(color: Colors.white),
          ))),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Container(
                  height: 300,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Weight',
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '$weight kg',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              weight++;
                              setState(() {
                                print('$weight kg');
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              weight--;
                              setState(() {
                                print('$weight kg');
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 300,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Height',
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '$height cm',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              height++;
                              setState(() {
                                print('$height cm');
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              height--;
                              setState(() {
                                print('$height cm');
                              });
                            },
                            mini: true,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    bim = weight / (pow(height / 100, 2));
                    print('Result: ${bim.toStringAsFixed(2)}');
                    state = states(bim);
                    print(state);
                  });
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Result: ${bim.toStringAsFixed(2)}',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            " $state",
            style: const TextStyle(color: Colors.green, fontSize: 25),
          )
        ],
      ),
    );
  }
}
