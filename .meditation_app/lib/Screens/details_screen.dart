// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Meditation",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                      child: Text(
                          "Live happier and healthier by learning the fundamentals of meditation"),
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: SearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        SeassionCard(
                          press: () {},
                          seassionNum: 1,
                          isDone: true,
                        ),
                        SeassionCard(
                          press: () {},
                          seassionNum: 2,
                          isDone: false,
                        ),
                        SeassionCard(
                          press: () {},
                          seassionNum: 3,
                          isDone: false,
                        ),
                        SeassionCard(
                          press: () {},
                          seassionNum: 4,
                          isDone: false,
                        ),
                        SeassionCard(
                          press: () {},
                          seassionNum: 5,
                          isDone: false,
                        ),
                        SeassionCard(
                          press: () {},
                          seassionNum: 6,
                          isDone: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Meditation",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                Text("Start your deepen you pratice"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final Function press;
  const SeassionCard({
    super.key,
    this.seassionNum = 0,
    this.isDone = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          //padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                press();
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(children: <Widget>[
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor)),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Session $seassionNum",
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ]),
              ),
            ),
          ),
        ),
      );
    });
  }
}
