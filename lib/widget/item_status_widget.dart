import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';
import 'dart:math';

class ItemStatusWidget extends StatelessWidget {
  const ItemStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = new Random();

    return Container(
      margin: EdgeInsets.only(
        bottom: 7,
      ),
      child: ListTile(
        leading: StatusView(
          radius: 30,
          spacing: 15,
          strokeWidth: 2,
          indexOfSeenStatus: 2,
          numberOfStatus: random.nextInt(10),
          padding: 1,
          centerImageUrl: "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600",
          seenColor: Colors.grey,
          unSeenColor: Colors.green,
        ),
        // leading: CircleAvatar(
        //   radius: 26,
        //   backgroundImage: NetworkImage(
        //       "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600"),
        // ),
        title: Text(
          "TechBro",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            Text(
              "Today, 8:13 AM",
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
