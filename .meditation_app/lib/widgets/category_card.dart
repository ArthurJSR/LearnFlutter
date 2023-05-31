import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';

class CategoryCard extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  const CategoryCard({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        margin: const EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 20),
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: [
            const BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 20,
              blurStyle: BlurStyle.normal,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: <Widget>[
                const Spacer(),
                SvgPicture.asset(svgScr),
                const Spacer(),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 15),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}