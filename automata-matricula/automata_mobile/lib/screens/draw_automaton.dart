import 'dart:async';

import 'package:automata_mobile/logic/automaton.dart';
import 'package:flutter/material.dart';

class DrawAutomaton extends StatelessWidget {
  final String matricula;

  const DrawAutomaton({super.key, required this.matricula});

  @override
  Widget build(BuildContext context) {
    final result = Automaton().processString(matricula);
    final currentState = result.currentState;
    final historyState = result.statesHistory;
    final acceptedState = result.acceptedState;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Automata Diagram'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                matricula,
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      AnimatedCircleWithTextWidget(
                        text: 'q0',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                        animationDuration: Duration(seconds: 1),
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q1',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q2',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q3',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q4',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      Column(
                        children: [
                          ArrowWidget(
                            size: 40,
                            color: Colors.blueGrey,
                            angle: -0.15,
                          ),
                          ArrowWidget(
                            size: 40,
                            color: Colors.blueGrey,
                            angle: 0.7,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CircleWithTextWidget(
                        text: 'q5',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: -0.2,
                              ),
                              CircleWithTextWidget(
                                text: 'q6',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: 0.0,
                              ),
                              CircleWithTextWidget(
                                text: 'q7',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: 0.0,
                              ),
                              CircleWithTextWidget(
                                text: 'q8',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: 0.0,
                              ),
                              CircleWithTextWidget(
                                text: 'q9',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: 0.2,
                              ),
                              CircleWithTextWidget(
                                text: 'q15',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: 0.0,
                              ),
                              CircleWithTextWidget(
                                text: 'q16',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: 0.0,
                              ),
                              CircleWithTextWidget(
                                text: 'q17',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                              ArrowWidget(
                                size: 40,
                                color: Colors.blueGrey,
                                angle: 0.0,
                              ),
                              CircleWithTextWidget(
                                text: 'q18',
                                radius: 20,
                                borderColor: Color.fromARGB(255, 62, 110, 102),
                                textColor: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleWithTextWidget(
                        text: 'q10',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q11',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q12',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q13',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                      ArrowWidget(
                        size: 40,
                        color: Colors.blueGrey,
                        angle: 0.0,
                      ),
                      CircleWithTextWidget(
                        text: 'q14',
                        radius: 20,
                        borderColor: Color.fromARGB(255, 62, 110, 102),
                        textColor: Colors.white,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Se completo el automata en $currentState y recorrio $historyState el estado de aceptacion es $acceptedState',
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CircleWithTextWidget extends StatelessWidget {
  final String text;
  final double radius;
  final Color borderColor;
  final Color textColor;

  const CircleWithTextWidget({
    super.key,
    required this.text,
    required this.radius,
    required this.borderColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2.0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class ArrowWidget extends StatelessWidget {
  final double size;
  final Color color;
  final double angle;

  const ArrowWidget({
    super.key,
    required this.size,
    required this.color,
    required this.angle,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle, // Ángulo de rotación en radianes
      child: Icon(
        Icons.arrow_right_alt,
        size: size,
        color: color,
      ),
    );
  }
}

class AnimatedCircleWithTextWidget extends StatefulWidget {
  final String text;
  final double radius;
  final Color borderColor;
  final Color textColor;
  final Duration animationDuration;

  const AnimatedCircleWithTextWidget({
    Key? key,
    required this.text,
    required this.radius,
    required this.borderColor,
    required this.textColor,
    required this.animationDuration,
  }) : super(key: key);

  @override
  State<AnimatedCircleWithTextWidget> createState() =>
      _AnimatedCircleWithTextWidgetState();
}

class _AnimatedCircleWithTextWidgetState
    extends State<AnimatedCircleWithTextWidget> {
  bool isFilled = false;

  void toggleFill() {
    setState(() {
      isFilled = !isFilled;
    });
  }

  @override
  void initState() {
    super.initState();
    // Inicia la animación automáticamente cuando se carga el widget
    Timer.periodic(widget.animationDuration, (timer) {
      toggleFill();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.animationDuration,
      width: widget.radius * 2,
      height: widget.radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: widget.borderColor, width: 2.0),
        color: isFilled ? widget.borderColor : Colors.transparent,
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.textColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
