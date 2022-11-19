import 'package:feedoo/view/widget/components/custom_imag_text.dart';
import 'package:feedoo/view/widget/like_animation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class UpperSection extends StatefulWidget {
  const UpperSection({super.key});

  @override
  State<UpperSection> createState() => _UpperSectionState();
}

class _UpperSectionState extends State<UpperSection> {
  bool isLikeAnimating = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.53,
      child: GestureDetector(
        onDoubleTap: () {
          setState(() {
            isLikeAnimating = true;
          });
        },
        child: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  height: MediaQuery.of(context).size.height * 0.53),
              items: [
                'https://images.unsplash.com/photo-1627923146705-ad489d69d302?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                'https://images.unsplash.com/photo-1569072712109-6206fa3505b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                'https://images.unsplash.com/photo-1624855600799-ac8e8bddd1da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                'https://images.unsplash.com/photo-1594147029855-c9445d2c6023?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(i),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Align(
              alignment: Alignment.center,
              child: AnimatedOpacity(
                duration: Duration(microseconds: 150),
                opacity: isLikeAnimating ? 1 : 0,
                child: LikeAnimation(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 100,
                  ),
                  isAnimating: isLikeAnimating,
                  duration: const Duration(microseconds: 400),
                  onEnd: () {
                    setState(() {
                      isLikeAnimating = false;
                    });
                  },
                ),
              ),
            ),
            customimagetex(
              imgurl:
                  "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=466&q=80",
              firsttxt: 'NataliSteven',
              secondtxt: 'Natali Steven',
              iconDatas: (Icons.more_horiz),
              clr: Colors.pink,
              isSaved: false,
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: customimagetex(
                isSaved: false,
                imgurl:
                    "https://images.unsplash.com/photo-1510913415497-e34c432bd039?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                firsttxt: 'Pachamama',
                secondtxt: 'Pervuian.Marylebone',
                iconDatas: Icons.star_border,
                clr: Colors.white,
                afterCliked: Icons.star,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
