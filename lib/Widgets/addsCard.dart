import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:icon_decoration/icon_decoration.dart';

class Addscard extends StatelessWidget {
  final String? addName;
  final String? addContent;
  final String? messageCount;

  Addscard({this.addName, this.addContent, this.messageCount});

  final senderStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: DecoratedIcon(
              decoration: IconDecoration(
                border: IconBorder(color: Colors.green, width: 3),
              ),
              icon: Icon(MdiIcons.tag, color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(addName!, style: senderStyle), Text(addContent!)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 11, 127, 14),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
                right: 5,
                top: 2,
                bottom: 2,
              ),
              child: Text(
                messageCount!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
