import 'package:feedoo/view/widget/widget.dart';
import 'package:flutter/material.dart';

class FeedSection extends StatefulWidget {
  const FeedSection({super.key});

  @override
  State<FeedSection> createState() => _FeedSectionState();
}

class _FeedSectionState extends State<FeedSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          // shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  child: Column(
                    children: const [
                      UpperSection(),
                      ButtonSection(),
                      CommentSection(),
                      Tagsection(),
                      DateSection(),
                    ],
                  ),
                ));
          }),
    );
  }
}
