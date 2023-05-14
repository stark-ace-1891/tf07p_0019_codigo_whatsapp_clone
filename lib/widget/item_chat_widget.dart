import 'package:flutter/material.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/models/chat_model.dart';

class ItemChatWidget extends StatelessWidget {
  // String avatarUrl;
  // String username;
  ChatModel chatModel;

  ItemChatWidget({
    // required this.avatarUrl,
    // required this.username,
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 7,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(chatModel.avatarUrl),
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          chatModel.isTyping == true ? "Typing" : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13,
            color:
                chatModel.isTyping == true ? Color(0xff01c851) : Colors.black45,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12,
                color: chatModel.countMessage > 0
                    ? Color(0xff01c851)
                    : Colors.black45,
              ),
            ),
            if (chatModel.countMessage > 0)
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xff01c851),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  chatModel.countMessage.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              )
            else
              SizedBox(),
          ],
        ),
      ),
    );
  }
}
