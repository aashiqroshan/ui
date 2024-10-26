import 'package:flutter/material.dart';
import 'package:leave_request/bottom_nav_bar.dart';
import 'package:leave_request/components/each_container.dart';
import 'package:leave_request/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Services serv = Services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Leave Request'),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
        ],
      ),
      body: ListView.builder(
        itemCount: serv.trail.length,
        itemBuilder: (context, index) {
          final data = serv.trail[index];
          return LeaveContainer(
              name: data.name,
              appliedDate: data.appliedDate,
              LeaveDate: data.leaveDate,
              duration: data.duration,
              leaveBalance: data.leaveBalance,
              reason: data.reason);
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
