import 'package:flutter/material.dart';

class Task {
  String name;
  bool done;
  IconData icon;

  Task({required this.name, this.done = false,this.icon=Icons.pets});
}

List<Task> task = [
  Task(name: "Feeding",icon: Icons.restaurant),
  Task(name: "Fresh Water",icon: Icons.water_drop_outlined),
  Task(name: "Exercise", icon: Icons.fitness_center),
  Task(name: "Rest and Sleep", icon: Icons.bed),
  Task(name: "Bonding Time", icon: Icons.favorite),
  Task(name: "Potty Breaks", icon: Icons.pets),
  Task(name: "Health Checks", icon: Icons.pets),
  Task(name: "Grooming", icon: Icons.pets),
  Task(name: "Comfort", icon: Icons.pets),
  Task(name: "Clean the Enclosures"),
  Task(name: "Socialize Animals"),
  Task(name: "Monitor Food Supply"),
  Task(name: "Groom the Animals"),
  Task(name: "Exercise the Pets"),
  Task(name: "Refresh Water Bowls")



];