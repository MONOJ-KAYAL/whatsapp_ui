//it is feature that is only Avalabile on the web
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

// creating a PRIFILE bar
class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //box
      height: MediaQuery.of(context).size.height * 0.077, //box
      width: MediaQuery.of(context).size.width * 0.25, //box
      padding: const EdgeInsets.all(10), //box
      decoration: const BoxDecoration(
        border: Border(
          //row  which devided two sections
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),

      // Adding icons and circle Avatar
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // space between avater and icons
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
            ),
            radius: 20,
          ),
          // Put both of the icons in a row
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ), //horizontally align
    );
  }
}
