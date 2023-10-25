import 'package:flutter/material.dart';
import 'package:localenotification/local_notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Local Notification"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              LocalNotification.showSimpleNotification(
                  title: 'Simple Notification',
                  body: "This is a simple notification",
                  payload: 'This is a simple data');
            },
            label: const Text('Simple Notification'),
          )
        ],
      ),
    );
  }
}
