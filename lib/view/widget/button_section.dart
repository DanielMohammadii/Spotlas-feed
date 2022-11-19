import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonSection extends StatefulWidget {
  const ButtonSection({super.key});

  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {
  bool icClickedd = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/Map.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/Speech.svg'),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  icClickedd = !icClickedd;
                });
              },
              icon: icClickedd
                  ? SvgPicture.asset('assets/images/Heart.svg')
                  : Image.asset(
                      'assets/images/hearchanged.png',
                      color: Colors.red,
                    ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/Paper.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
