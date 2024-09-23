import 'package:flutter/material.dart'; //1.import material package
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  //create statelessWidget over hare
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // a.'scaffold',  b.DefaultTabController--To create tabs in our Application
      length: 3,
      child: Scaffold(
        //materuial app home proparty is folloed by a scoffold
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            //Text
            'Whatsapp',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false, // Remove the title from center
          actions: [
            IconButton(
              //add Icon
              onPressed: () {}, //onpressed option to click on icon
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              //add Icon
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
              // To add Tabs
              indicatorColor: tabColor, //Indicator colour --Green
              indicatorWeight: 4, //with size of the indicator
              labelColor: tabColor, //All label colors turned into Green
              unselectedLabelColor: Colors
                  .grey, //Which we select is green and which is not that shows gray
              labelStyle: TextStyle(
                // how was the label should look --Bold
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                //Tabs
                Tab(
                  //Tab 1
                  text: 'CHATS',
                ),
                Tab(
                  //Tab 2
                  text: 'STATUS',
                ),
                Tab(
                  //Tab 3
                  text: 'CALLS',
                ),
              ]),
        ),
        //Body
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ), //conected contactlist to our app  //Body-- located to another file
      ),
    );
  }
}
