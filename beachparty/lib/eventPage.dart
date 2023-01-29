import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Britannia Beach'),
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            // Image.asset('/assets/images/BritanniaBeach.jpg'),
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF38A3A5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: const EdgeInsets.all(10.0),
                width: 400.0,
                height: 250.0,
                child: const Text(
                  '\n Beach Name: Britannia Beach \n\n Clean up Date: February 30, 2023 \n\n Details: Come join us! BYOB \n\n Organized by: Team Clean\'n\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: AnimatedButton(
                color: const Color(0xFF38A3A5),
                onPressed: () {},
                enabled: true,
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}