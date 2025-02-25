
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailTile extends StatelessWidget {
  final String name;
  final String subject;
  final String message;
  final String date;

  const EmailTile({
    super.key,
    required this.name,
    required this.subject,
    required this.message,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(Icons.person, color: Colors.white, size: 30),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                subject,
                style: const TextStyle(fontSize: 14, color: Colors.white70),
              ),
              Text(
                message,
                style: const TextStyle(fontSize: 13, color: Colors.white54),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
        const Spacer(),
        Column(
          children: [
            Text(date, style: const TextStyle(color: Colors.white54)),
            const SizedBox(height: 5),
            const Icon(Icons.star_outline, size: 22, color: Colors.white54),
          ],
        ),
      ],
    );
  }
}
