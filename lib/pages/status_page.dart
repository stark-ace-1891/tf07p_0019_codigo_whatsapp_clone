import 'package:flutter/material.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/widget/item_status_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: Stack(
                children: [
                  // Image widget
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),

                  // Positioned widget to place the icon on top of the image
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 35,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green, // Green background color
                      shape: BoxShape.circle, // Shape as a circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.green, // White icon color
                        size: 24, // Adjust the size as needed
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              "My status",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Text(
                  "tap to add status update",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            color: Colors.black.withOpacity(0.055),
            child: Text(
              "Recent updates",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff008878),
              ),
            ),
          ),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
          ItemStatusWidget(),
        ],
      ),
    );
  }
}
