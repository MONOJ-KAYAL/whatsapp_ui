import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/my_messege_card.dart';
import 'package:whatsapp_ui/widgets/sender_messege_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length, // masseges comes from info.dart file
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessegeCard(
            messege: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessegeCard(
          messege: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
