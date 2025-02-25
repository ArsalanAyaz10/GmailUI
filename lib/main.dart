import 'package:flutter/material.dart';

import 'emailTitle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: BuildUI()),
    );
  }
}

class BuildUI extends StatelessWidget {
  const BuildUI({super.key});

  final List<Map<String, String>> emails = const [
    {
      "name": "Arsalan Ayaz",
      "subject": "Clone for Gmail",
      "message": "Check out my Profile for my repo to this project!",
      "date": "3 Feb",
    },
    {
      "name": "John Doe",
      "subject": "Meeting Reminder",
      "message": "Don't forget about the meeting tomorrow at 10 AM.",
      "date": "2 Feb",
    },
    {
      "name": "Alice Smith",
      "subject": "Project Update",
      "message": "I've made some changes to the report. Please review it.",
      "date": "1 Feb",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: SearchBar(
                elevation: WidgetStatePropertyAll(3),
                hintText: "Search in emails",
                hintStyle: WidgetStatePropertyAll<TextStyle>(
                  TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8),
            const Text("Inbox", style: TextStyle(fontSize: 15)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: emails.length,
                separatorBuilder: (context, index) => const Divider(
                      color: Color.fromARGB(255, 15, 20, 23),
                      height: 20,
                    ),
                itemBuilder: (context, index) {
                  final email = emails[index];
                  return EmailTile(
                    name: email["name"]!,
                    subject: email["subject"]!,
                    message: email["message"]!,
                    date: email["date"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
