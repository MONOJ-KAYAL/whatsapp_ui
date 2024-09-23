import 'package:flutter/material.dart'; //1.import material package
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';
import 'package:whatsapp_ui/widgets/web_chat_appbar.dart';
import 'package:whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //usually material app home proparty is followed by Scoffold.
        //whenever we use scoffold scaffolds tells the flutter framework that hay, the programer has used ascaffold widget so, we need to provide user or the programmer all the capabilities to add everything related to a Material Design.
        //for example 'The Header' if we dont use a scoffold we wont be abble to use Header in any of our apps.
        //scaffold will make sure that something related to one spesefic page is done.and scaffold will give us axess to ,Headers,Footers,and all of that.
        body: Row(
      //devided by two sections one is...CONTACT LIST | CHAT.... section
      crossAxisAlignment:
          CrossAxisAlignment.stretch, //Horizontal <------------> line alignment
      children: [
        const Expanded(
          child: SingleChildScrollView(
            //It will allow us to scroll.
            child: Column(
              //box
              children: [
                WebProfileBar(), //imported
                WebSearchBar(),
                ContactList(),
              ],
            ),
          ),
        ),
        //web screen
        Container(
          //Box
          width: MediaQuery.of(context).size.width *
              0.75, //......size.width it covers entire screen size // and the into(*) 75 is the 75% of the total screen it takes.
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgroundimage.png'),
              fit: BoxFit.cover,
            ), //IF CONTAINER DOSENT HAVE ANY WIDTH THEN IT'S NOT GONNA WORK
          ),
          child: Column(
            children: [
              const WebChatAppbar(),
              const Expanded(
                //Exoanded makes us use the whole remaining screensize is left it makes us use that
                child: ChatList(),
              ),
              //chat input
              Container(
                height: MediaQuery.of(context).size.height *
                    0.07, //0.07% of the total height of the screen
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: dividerColor,
                    ),
                  ),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                    ),
                    //TEXT FILD
                    //After that we need a Text fild here but we can't directly use a text find
                    //we have to wrap it with Expanded widget
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 15,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: searchBarColor,
                            filled: true,
                            hintText: 'Type a message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(left: 20),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
