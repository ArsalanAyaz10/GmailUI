import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'emailTitle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              backgroundColor: Colors.redAccent,
              label: "Mail",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_front),
              label: "Meet",
            ),
          ],
          backgroundColor: Colors.white,
          selectedItemColor: Colors.redAccent,
          elevation: 2,
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          autofocus: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          label: Row(
            children: [
              Icon(MdiIcons.pencil, color: Colors.red, size: 25),
              SizedBox(width: 15),
              Text("Compose", style: TextStyle(color: Colors.red)),
            ],
          ),
          onPressed: () {},
        ),
        body: BuildUI(),
      ),
    );
  }
}

//build UI

class BuildUI extends StatelessWidget {
  BuildUI({super.key});

  final textStyle = TextStyle(color: Colors.black, fontWeight: FontWeight.w500);
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
    {
      "name": "Bob Johnson",
      "subject": "Lunch Plans",
      "message": "Are we still on for lunch today?",
      "date": "31 Jan",
    },
    {
      "name": "Charlie Brown",
      "subject": "Code Review",
      "message": "Can you review my latest PR?",
      "date": "30 Jan",
    },
    {
      "name": "David Wilson",
      "subject": "Team Outing",
      "message": "Don't forget about the team outing this Friday.",
      "date": "29 Jan",
    },
    {
      "name": "Eve Adams",
      "subject": "New Project",
      "message": "Let's discuss the new project requirements.",
      "date": "28 Jan",
    },
    {
      "name": "Frank White",
      "subject": "Budget Report",
      "message": "The budget report is ready for your review.",
      "date": "27 Jan",
    },
    {
      "name": "Grace Lee",
      "subject": "Client Feedback",
      "message": "We received some feedback from the client.",
      "date": "26 Jan",
    },
    {
      "name": "Hannah King",
      "subject": "Holiday Plans",
      "message": "What are your plans for the holidays?",
      "date": "25 Jan",
    },
    {
      "name": "Ian Scott",
      "subject": "Server Maintenance",
      "message": "Scheduled server maintenance this weekend.",
      "date": "24 Jan",
    },
    {
      "name": "Jackie Chan",
      "subject": "Training Session",
      "message": "Reminder about the training session tomorrow.",
      "date": "23 Jan",
    },
    {
      "name": "Karen Green",
      "subject": "Invoice",
      "message": "Please find the attached invoice for last month.",
      "date": "22 Jan",
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
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: SearchBar(
                elevation: WidgetStatePropertyAll(1),
                backgroundColor: WidgetStatePropertyAll<Color>(
                  Color.fromARGB(255, 255, 255, 255),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                leading: Icon(Icons.menu),
                hintText: "Search in emails",
                hintStyle: WidgetStatePropertyAll<TextStyle>(
                  TextStyle(color: Colors.black),
                ),
                autoFocus: true,
              ),
            ),
            SizedBox(height: 8),
            Text("PRIMARY", style: textStyle),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: emails.length,
                separatorBuilder:
                    (context, index) =>
                        const Divider(height: 20, color: Colors.transparent),
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
