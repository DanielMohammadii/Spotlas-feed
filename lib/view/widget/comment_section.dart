import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CommentSection extends StatefulWidget {
  const CommentSection({super.key});

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'NatalieSteven',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 2),
          Expanded(
            child: Container(
              width: 150,
              child: const ReadMoreText(
                'Flutter is Google’s mobile UI openative (super fast) interfaces for iOS and Android an source framework to build high-quality native (supe UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.bile UI open source framework to build high-quality native (supe UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the',
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 30, 132, 215),
                ),
                moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 30, 132, 215),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
