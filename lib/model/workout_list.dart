import 'package:flutter/material.dart';

class Choice {
  const Choice({required this.title, required this.reps, required this.icon,required this.type});

  final String title;
  final int reps;
  final String icon;
  final int type;

// final IconData icon;

}

const List<Choice> kChoises = <Choice>[
  const Choice(title: 'Jumping Jack 1', reps: 20,icon: 'assets/gifs/diamond_pushup.gif',  type: 0),
  const Choice(title: 'Jumping Jack 2', reps: 15,icon: 'assets/gifs/diamond_pushup.gif', type: 1),
  const Choice(title: 'Jumping Jack 3', reps: 10,icon: 'assets/gifs/diamond_pushup.gif', type: 0),
  const Choice(title: 'Jumping Jack 4', reps: 25,icon: 'assets/gifs/diamond_pushup.gif', type: 0),
];
