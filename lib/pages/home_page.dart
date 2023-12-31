import 'package:flutter/material.dart';
import 'package:health_app_ui/widgets/health_needs.dart';
import 'package:health_app_ui/widgets/nearby_doctors.dart';
import 'package:health_app_ui/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Yash'),
            Text(
              'How are you feeling today?',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        children: [
          const UpcomingCard(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Health Needs',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          const HealthNeeds(),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Nearby Doctors',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          const NearByDoctor(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline),
                activeIcon: Icon(Ionicons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.calendar_outline),
                activeIcon: Icon(Ionicons.calendar),
                label: 'Calendar'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.chatbubble_ellipses_outline),
                activeIcon: Icon(Ionicons.chatbox_ellipses),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline),
                activeIcon: Icon(Ionicons.person),
                label: 'Profile')
          ]),
    );
  }
}
