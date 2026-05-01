import 'package:flutter/material.dart';

import '../utils/card_color.dart';
import 'about_screen.dart';
import 'contact_screen.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDark;

  const HomeScreen({
    super.key,
    required this.toggleTheme,
    required this.isDark,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  int max = 10;

  int totalClicks = 0;
  int highest = 0;

  void increment() {
    if (count < max) {
      setState(() {
        count++;
        totalClicks++;
        if (count > highest) highest = count;
      });
    }
  }

  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
        totalClicks++;
      });
    }
  }

  void reset() {
    setState(() => count = 0);
  }

  @override
  Widget build(BuildContext context) {
    double progress = count / max;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        actions: [
          IconButton(
            icon: Icon(widget.isDark ? Icons.dark_mode : Icons.light_mode),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text("Menu")),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ContactScreen()),
                );
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Card(
              color: getCardColor(context),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: const Icon(Icons.analytics),
                title: const Text("Current Count"),
                subtitle: Text("$count / $max"),
              ),
            ),

            const SizedBox(height: 15),

            Card(
              color: getCardColor(context),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 140,
                          width: 140,
                          child: CircularProgressIndicator(
                            value: progress,
                            strokeWidth: 10,
                          ),
                        ),
                        Text(
                          "$count",
                          style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildBtn(Icons.remove, decrement),
                        buildBtn(Icons.refresh, reset),
                        buildBtn(Icons.add, increment),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: Card(
                    color: getCardColor(context),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.trending_up),
                      title: const Text("Max Reached"),
                      subtitle: Text("$highest"),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: getCardColor(context),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.touch_app),
                      title: const Text("Clicks"),
                      subtitle: Text("$totalClicks"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Card(
              color: getCardColor(context),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const ListTile(
                leading: Icon(Icons.lightbulb_outline),
                title: Text("Usage Tip"),
                subtitle: Text(
                  "Use + to increase, - to decrease, and reset anytime.",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBtn(IconData icon, VoidCallback onTap) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
      ),
      child: Icon(icon),
    );
  }
}
