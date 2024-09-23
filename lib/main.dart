import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_ui/screens/web_screen_layout.dart';

void main() {
  runApp(
      const MyApp()); //as soon as we add constent constractor over here My App asks such to use constent you are just telling flutter that, hay the widget instence that you have created over here this my app class over here dosent need to be re created every singal time
} //this helps to improve the performence of the app, beacaus the number of time this object is creted is less.

//
class MyApp extends StatelessWidget {
  // less state -in a statelesswidget the state is immutable meening once the data was created it can not be chenge // state are the text on the UI ,and Widgets are the bouttoms and boxes
  const MyApp(
      {super.key}); //we ar optionally taking some staff from thr constractor and passing it to the super widget

  // This widget is the root of your application.
  @override //Statelesswidget is a abstract class. so, whaneever you extend a abstract class you need to override its function and re define its implimentation.
  Widget build(BuildContext context) {
    //go to the stateless widget dafination
    return MaterialApp(
      //material app will set the overall theming and overall navigations for us.
      // Their are two type of app 1.Material App 2. Cupartino App
      //function //return to the App UI
      debugShowCheckedModeBanner:
          false, //remove debug showing on the top right corner
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor, //app background colour
      ),
      home: const ResponsiveLayout(
        //home,here the app ui start   //And the the responsive layout widgit is exported to home screen
        mobileScreenLayout:
            MobileScreenLayout(), // defined in 'class' inside mobile_screen_layout.dart
        webScreenLayout:
            WebScreenLayout(), //defined in 'class' inside web_screen_layout.dart
      ),
    );
  }
}
