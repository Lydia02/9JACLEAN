import 'package:flutter/material.dart';

class RecyclingCenterCard extends StatelessWidget {
  final String centerName;
  final String location;

  const RecyclingCenterCard({required this.centerName, required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.recycling, color: Colors.green),
        title: Text(centerName, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(location),
        trailing: TextButton(
          onPressed: () {},
          child: Text("View map", style: TextStyle(color: Colors.green)),
        ),
      ),
    );
  }
}
