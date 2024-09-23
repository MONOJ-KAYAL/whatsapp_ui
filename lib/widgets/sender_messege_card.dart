import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

//sent massege shows in the centar LEFT side

class SenderMessegeCard extends StatelessWidget {
  final String messege;
  final String date;
  const SenderMessegeCard({
    super.key,
    required this.messege,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, //left side
      child: ConstrainedBox(
        //constraints basically allow us to give constrainnes of the app like the children of the app
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width -
              45, // it left the 45 sige from the right for the logos
        ),
        child: Card(
          // return Card
          elevation: 1, //for 3D effect
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor, //sender massege colour
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  messege,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.white60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
