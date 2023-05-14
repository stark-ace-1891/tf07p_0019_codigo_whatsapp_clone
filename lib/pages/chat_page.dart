import 'package:flutter/material.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/widget/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
          ItemChatWidget(),
        ],
      ),
    );
  }
}
