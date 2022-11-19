// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:feedoo/view/widget/components/custom_circle_avatar.dart';

class customimagetex extends StatefulWidget {
  final String imgurl;
  final String firsttxt;
  final String secondtxt;
  final IconData iconDatas;
  bool isSaved = false;
  IconData? afterCliked;

  Color clr;
  customimagetex({
    Key? key,
    required this.imgurl,
    this.afterCliked,
    required this.firsttxt,
    required this.secondtxt,
    required this.iconDatas,
    required this.clr,
    required this.isSaved,
  }) : super(key: key);

  @override
  State<customimagetex> createState() => _customimagetexState();
}

class _customimagetexState extends State<customimagetex> {
  IconData? afterCliked;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              customCircleAvatar(
                url: widget.imgurl,
                clr: widget.clr,
              ),
              SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Container(
                  height: 50,
                  child: Text(
                    widget.firsttxt,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.white.withOpacity(0.6),
                            offset: const Offset(5, 10),
                            blurRadius: 8,
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: (() {
                setState(() {
                  widget.isSaved = !widget.isSaved;
                });
              }),
              icon: Icon(
                widget.isSaved ? widget.iconDatas : widget.afterCliked,
                color: widget.isSaved ? Colors.white : Colors.yellow,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
