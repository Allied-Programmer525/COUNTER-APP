import 'package:flutter/material.dart';

import '../utils/card_color.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact")),
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
                Icon(Icons.contact_mail, size: 40),
                SizedBox(height: 15),
                Text(
                  "Get in Touch",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text(
                      "your@email.com",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.code),
                    SizedBox(width: 10),
                    Text(
                      "github.com/yourprofile",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(width: 10),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
