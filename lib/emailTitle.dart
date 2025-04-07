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
    final textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

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
              Text(name, style: textStyle),
              Text(subject, style: textStyle),
              Text(
                message,
                style: TextStyle(color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
        const Spacer(),
        Column(
          children: [
            Text(date, style: textStyle),
            const SizedBox(height: 5),
            const Icon(
              Icons.star_outline,
              size: 22,
              color: Color.fromARGB(137, 18, 6, 6),
            ),
          ],
        ),
      ],
    );
  }
}
