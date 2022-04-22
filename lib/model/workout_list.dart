import 'package:flutter/material.dart';

class Choice {
  const Choice({required this.title, required this.reps, required this.type});

  final String title;
  final int reps;
  final int type;
// final IconData icon;

}

const List<Choice> kChoises = <Choice>[
  const Choice(title: 'Jumping Jack', reps: 20, type: 0),
  const Choice(title: 'Jumping Jack', reps: 15, type: 1),
  const Choice(title: 'Jumping Jack', reps: 10, type: 0),
  const Choice(title: 'Jumping Jack', reps: 25, type: 0),
];
