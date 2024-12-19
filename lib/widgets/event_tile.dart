import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color.fromARGB(255, 72, 212, 212),
      title: Text("Event Name"),
      subtitle: Text("Event description"),
      onTap: () {},
    );
  }
}
