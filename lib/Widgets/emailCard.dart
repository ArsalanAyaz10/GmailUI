import 'package:flutter/material.dart';

class EmailCard extends StatelessWidget {
  final String? avatarLetter;
  final Color? avatarColor;
  final String? sender;
  final String? subject;
  final String? content;
  final String? date;

  const EmailCard({
    super.key,
    this.avatarLetter,
    this.avatarColor,
    this.sender,
    this.subject,
    this.content,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Flexible(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: avatarColor,
                  child: Text(
                    avatarLetter!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sender!,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      subject!,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      content!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  children: [
                    Text(
                      date!,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 23),
                    Icon(
                      Icons.star_border_outlined,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
