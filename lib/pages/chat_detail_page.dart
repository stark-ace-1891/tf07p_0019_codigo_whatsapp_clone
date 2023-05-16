import 'package:flutter/material.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/data/data_dummy.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/models/chat_message_model.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final TextEditingController _myControllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 22,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white10,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Last seen today 2:20 PM",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          //Fondo
          Container(
            color: Colors.black.withOpacity(0.09),
          ),
          //Listado de imagenes
          ListView.builder(
            itemCount: chatMessageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: chatMessageList[index].messageType == 'me'
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: chatMessageList[index].messageType == 'me'
                        ? Color(0xffe3ffc4)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                      topRight: chatMessageList[index].messageType == 'me'
                          ? Radius.circular(0)
                          : Radius.circular(14),
                      topLeft: chatMessageList[index].messageType == 'me'
                          ? Radius.circular(14)
                          : Radius.circular(0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        offset: Offset(4, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Text(
                    chatMessageList[index].messageContent,
                  ),
                ),
              );
            },
          ),

          //Input del nuevo mensaje
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _myControllerMessage,
                        decoration: InputDecoration(
                          hintText: "Type message",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black38,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.sentiment_satisfied_alt,
                            size: 30,
                            color: Colors.black45,
                          ),
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.attach_file,
                                size: 30,
                                color: Colors.black45,
                              ),
                              Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: Colors.black45,
                              ),
                              SizedBox(
                                width: 6,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          chatMessageList.add(ChatMessageModel(
                            messageContent: _myControllerMessage.text,
                            messageType: "me",
                          ));
                          _myControllerMessage.clear();
                          FocusScope.of(context).unfocus();
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff008878),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
