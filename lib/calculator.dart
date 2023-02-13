import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  EdgeInsetsGeometry? padding;
  var caculator = 0;

  Widget button(Color color, String text, Function() onClicked) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        alignment: Alignment.center,
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(360),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomRight,
          width: 400,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: const TextField(),
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      button(
                          const Color.fromARGB(255, 116, 116, 116), 'x', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(
                          const Color.fromARGB(255, 116, 116, 116), '%', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(
                          const Color.fromARGB(255, 116, 116, 116), '÷', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    children: [
                      button(const Color.fromARGB(255, 61, 61, 61), '7', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '8', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '9', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    children: [
                      button(const Color.fromARGB(255, 61, 61, 61), '4', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '5', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '6', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    children: [
                      button(const Color.fromARGB(255, 61, 61, 61), '1', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '2', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '3', () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Row(
                    children: [
                      button(
                          const Color.fromARGB(255, 61, 61, 61), 'AC', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '0', () {}),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      button(const Color.fromARGB(255, 61, 61, 61), '.', () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  button(Colors.orange, '*', () {}),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  button(Colors.orange, '-', () {}),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  button(Colors.orange, '+', () {}),
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 80,
                    height: 190,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black, shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10000000)),
                          backgroundColor: Colors.orange),
                      onPressed: () {},
                      child: const Text(
                        '=',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
