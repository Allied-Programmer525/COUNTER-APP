import 'package:flutter/material.dart';

import '../utils/card_color.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Center(
        child: Card(
          color: getCardColor(context),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
                SizedBox(height: 15),
                Text(
                  "Your Name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("Flutter Developer", style: TextStyle(color: Colors.teal)),
                SizedBox(height: 15),
                Divider(),
                Text(
                  "This app demonstrates Flutter UI design, state management, and navigation.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "Flutter • Dart • Material UI",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
