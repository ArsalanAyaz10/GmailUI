import 'package:flutter/material.dart';
import 'package:madweek2/Widgets/addsCard.dart';
import 'package:madweek2/Widgets/emailCard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail UI Clone',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: EmailScreen(),
    );
  }
}

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        elevation: 2,
        label: Text('Compose', style: TextStyle(color: Colors.redAccent)),
        icon: Icon(MdiIcons.pencil, size: 25, color: Colors.redAccent),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_rounded, size: 30),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_sharp, size: 30),
            label: 'Meet',
          ),
        ],
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
      ),
      body: EmailList(),
    );
  }
}

//LIST VIEW OF EMAILS

class EmailList extends StatelessWidget {
  const EmailList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SEARCH BAR
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
              bottom: 10,
            ),
            child: SearchBar(
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              constraints: BoxConstraints(
                maxHeight: 50,
                minHeight: 50,
                maxWidth: double.infinity,
                minWidth: double.infinity,
              ),
              elevation: WidgetStatePropertyAll(1),
              leading: Icon(Icons.menu_outlined),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              hintText: "Search in emails",
            ),
          ),
          //EMAIL HEADER
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 15,
            ),
            child: Expanded(
              child: RichText(
                text: TextSpan(
                  text: 'PRIMARY',
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),

          //EMAIL CARDS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                EmailCard(
                  avatarLetter: 'G',
                  avatarColor: Colors.orangeAccent,
                  sender: 'Google Maps Timeline',
                  subject: '🌍 Metallic, your January update',
                  content: 'This Timeline email is an automated message.',
                  date: '6 Feb',
                ),
                SizedBox(height: 12),
                EmailCard(
                  avatarLetter: 'I',
                  avatarColor: Colors.deepPurpleAccent,
                  sender: 'itch.io',
                  subject: 'securas released a new game: GPS Simu...',
                  content:
                      'Hey Metallic Fist Digital Limited, someone just released a game.',
                  date: '31 Jan',
                ),
                SizedBox(height: 12),
                Addscard(
                  addName: "Promotions",
                  addContent: "itch.io, Google Account",
                  messageCount: "36 new",
                ),
                SizedBox(height: 12),
                EmailCard(
                  avatarLetter: 'G',
                  avatarColor: Colors.green,
                  sender: 'Google Play | Apps & Games',
                  subject: 'Metallic Fist | best apps from 2020...',
                  content: "What's new on Android and Google Play...",
                  date: '26 Jan',
                ),
                SizedBox(height: 12),
                EmailCard(
                  avatarLetter: 'A',
                  avatarColor: Colors.blue,
                  sender: 'Amazon Web Services',
                  subject: 'Last 2 days | Register now for AWS Build...',
                  content: '21 January 2021 | Last chance to register...',
                  date: '19 Jan',
                ),
                SizedBox(height: 12),
                EmailCard(
                  avatarLetter: 'A',
                  avatarColor: Colors.blue,
                  sender: 'Amazon Web Services',
                  subject: 'Registration open: AWS Innovate - AI/M...',
                  content: 'Save the date: 24 February, 2021...',
                  date: '14 Jan',
                ),
                SizedBox(height: 12),
                EmailCard(
                  avatarLetter: 'G',
                  avatarColor: Colors.red,
                  sender: 'Google Account',
                  subject: 'Metallic, your Privacy Checkup...',
                  content: 'See your personalized privacy suggestions...',
                  date: '8 Jan',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
