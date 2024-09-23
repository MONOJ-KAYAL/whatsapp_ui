import 'package:flutter/material.dart'; //1 import material package
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  // create statelesswidget here
  const ContactList({super.key}); //

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10), //space from top padding
      child: Column(
        children: [
          //1.'Expanded', related to 'Devider' line number-57 (removed Expanded)
          ListView.builder(
            shrinkWrap: true, //for not comes any error in feature
            itemCount: info.length, //from info.dart
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    // It use to become clickable
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const MobileChatScreen(), //Navigate to another screen
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0), // space
                      child: ListTile(
                        //listtile gives us the propartys that we need ,a tital ,a subtital etc.
                        title: Text(
                          info[index]['name']
                              .toString(), //name was defined in info.dart  //we have to convert it to a string orels it dosent know.
                          style: const TextStyle(fontSize: 18),
                        ),
                        subtitle: Padding(
                          //SAtfirst we need to leave a padding from the Title
                          padding: const EdgeInsets.only(
                              top: 6), //and the padding will be from the top 6.
                          child: Text(
                            info[index]['message'].toString(),
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        //Avatar
                        leading: CircleAvatar(
                          // roumd shape
                          backgroundImage: NetworkImage(
                            info[index]['profilePic'].toString(),
                          ),
                          radius:
                              30, //It shows the picture in the circle much bigger
                        ),
                        trailing: Text(
                          //tralling eliment allowes us to add any widget at the right site of the eliment
                          info[index]['time'].toString(),
                          style:
                              const TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    // A space that separates the list  //now we cant see anything beacaus we need to wrap our list view builder with 'Expanded' so that it takes most of the place that left
                    color: dividerColor,
                    indent: 85,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
