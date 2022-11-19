import 'package:flutter/material.dart';

class Tagsection extends StatelessWidget {
  const Tagsection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          tagcontainer('Oudoor'),
          tagcontainer('Cheap'),
          tagcontainer('Live Music'),
          tagcontainer('Fancy'),
          tagcontainer('Romantic'),
        ],
      ),
    );
  }

  Padding tagcontainer(String txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 9),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
            )
          ],
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: .8),
        ),
        height: 35,
        width: 85,
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
