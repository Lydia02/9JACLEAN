import 'package:flutter/material.dart';
import '../../../widgets/stats_card.dart';
import '../../../widgets/quick_action_button.dart';
import '../../../widgets/recycling_center_card.dart';
import '../../../widgets/recent_activity_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Hello, Simeon Azeh",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contribution Stats
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatsCard(
                  icon: Icons.delete_outline,
                  title: "Waste recycled",
                  value: "15 kg",
                ),
                StatsCard(
                  icon: Icons.eco_outlined,
                  title: "CO₂ emission saved",
                  value: "0.4 kg",
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Quick Actions
            const Text("Quick Actions", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QuickActionButton(icon: Icons.shopping_cart, label: "Buy or sell E waste"),
                QuickActionButton(icon: Icons.volunteer_activism, label: "Donate Ewaste"),
                QuickActionButton(icon: Icons.schedule, label: "Schedule Pickup"),
                QuickActionButton(icon: Icons.location_on, label: "Find Recycling centers"),
              ],
            ),
            const SizedBox(height: 20),

            // Nearest Recycling Center
            const Text("Recycling center", style: TextStyle(fontWeight: FontWeight.bold)),
            RecyclingCenterCard(
              centerName: "Remera E4 Ewaste center",
              location: "Kg st 101, Kigali Rwanda",
            ),
            const SizedBox(height: 20),

            // Recent Activities
            const Text("Recent Activities", style: TextStyle(fontWeight: FontWeight.bold)),
            RecentActivityCard(
              activity: "Your laptop product listed and active",
            ),

            // Featured Blogs Placeholder
            const SizedBox(height: 20),
            const Text("Featured blogs", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.miscellaneous_services), label: "Services"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Market"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.reviews), label: "Reviews"),
        ],
      ),
    );
  }
}
