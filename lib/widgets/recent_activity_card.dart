import 'package:flutter/material.dart';

class RecentActivityCard extends StatelessWidget {
  final String activity;

  const RecentActivityCard({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.notifications, color: Colors.green),
        title: Text(activity),
        trailing: TextButton(
          onPressed: () {},
          child: Text("View product", style: TextStyle(color: Colors.green)),
        ),
      ),
    );
  }
}
