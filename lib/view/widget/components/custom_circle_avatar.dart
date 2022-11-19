import 'package:flutter/material.dart';

class customCircleAvatar extends StatelessWidget {
  final String url;
  final Color clr;
  const customCircleAvatar({
    required this.clr,
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 9),
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          color: Colors.white,
          border: Border.all(
            width: 4,
            color: clr,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
