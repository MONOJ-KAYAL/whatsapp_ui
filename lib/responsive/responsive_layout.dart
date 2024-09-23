import 'package:flutter/material.dart'; //1.import material package
//So, the function of this layout is ,
//It will check the Screen width of the screen we have ,
//and then it will tell us what the width is
// if it's grater than some value than some value
//than display the layout that we create for the MOBILE or the layout that we create for WEB.

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout; //named argument
  final Widget webScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout, //required parameater
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //Layout builder gives us a builder function over heare and this function gives us context and constraints.
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //if , the constraints max width is grater than 900 than return webscreen .
          //web screen
          return webScreenLayout;
        }
        //modile screen
        return mobileScreenLayout; //else , lessthan 900 than mobile screen and return function do that work
      },
    );
  }
}
