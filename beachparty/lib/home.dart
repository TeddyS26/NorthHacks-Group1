
import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

import 'eventPage.dart';

class CleanUpEvent {
  final String title;
  final String details;
  final String date; // TODO: NOT THE BEST WAY
  final String organizer;
  final String tags;

  const CleanUpEvent(this.title, this.details, this.date, this.organizer, this.tags);
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          title: const Center(
            child: Text(
              "Beach Party",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 28,
              ),
            ),
          )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AnimatedButton(
                      color: const Color(0xFF38A3A5),
                      onPressed: () {debugPrint("Filter");},
                      child: const Text(
                        'Filter',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    AnimatedButton(
                      color: Colors.white,
                      onPressed: () {debugPrint("Sort");},
                      child: const Text(
                        'Sort',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF38A3A5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(128, 10, 128, 10),
                children: const <Widget>[
                  ListWidget(),
                  ListWidget(),
                  ListWidget(),
                  ListWidget(),
                  ListWidget(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF38A3A5),
        // onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF38A3A5),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EventPage()),
          );
        },
        child: SizedBox(
          width: 600,
          height: 120,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.beach_access,
                    size: 36,
                  ),
                  title: Text(
                    "Britannia Beach",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    'February 30, 2023',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

