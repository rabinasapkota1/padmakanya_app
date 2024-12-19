import 'package:flutter/material.dart';

class Event {
  final String name;
  final String description;
  final DateTime date;

  Event({
    required this.name,
    required this.description,
    required this.date,
  });
}

List<Event> events = [
  Event(
    name: 'Music Concert',
    description: 'Enjoy a night of classical music.',
    date: DateTime.now(),
  ),
  Event(
    name: 'Art Exhibition',
    description: 'Explore modern art collections.',
    date: DateTime.now(),
  ),
  Event(
    name: 'Tech Conference',
    description: 'Discover the latest in tech.',
    date: DateTime.now(),
  ),
];
