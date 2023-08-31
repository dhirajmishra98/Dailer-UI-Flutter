import 'package:dailer_demo/screens/caller_screen.dart';
import 'package:dailer_demo/constants/contacts.dart';
import 'package:dailer_demo/constants/recents.dart';
import 'package:flutter/material.dart';

class DialerScreen extends StatefulWidget {
  const DialerScreen({super.key});

  @override
  State<DialerScreen> createState() => _DialerScreenState();
}

class _DialerScreenState extends State<DialerScreen> {
  int currIndex = 0;

  void toggleIndex(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Phone',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: const TabBarView(
          children: [
            CallerScreen(),
            Recents(),
            Contacts(),
          ],
        ),
        bottomNavigationBar: TabBar(
          onTap: toggleIndex,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(
              text: 'Keypad',
            ),
            Tab(
              text: 'Recents',
            ),
            Tab(
              text: 'Contacts',
            ),
          ],
        ),
      ),
    );
  }
}
