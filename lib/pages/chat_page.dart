import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 26,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          title: Text(
            "Fiorella Guadalupe Lopez",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "He enviado el encargo por curier por favor tienes que estar atento",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "10:20",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff01c851),
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xff01c851),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 26,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          title: Text(
            "Fiorella Guadalupe Lopez",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "He enviado el encargo por curier por favor tienes que estar atento",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "10:20",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff01c851),
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xff01c851),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
