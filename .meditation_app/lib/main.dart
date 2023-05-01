import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/Screens/details_screen.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/category_card.dart';
import 'package:meditation_app/widgets/search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      // ignore: prefer_const_constructors
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
    .size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .50,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: const Color(0xFFF5CEB8),
            image: const DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Good Mornign \nShishir",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
                SearchBar(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .80,
                    crossAxisSpacing: 0.50,
                    mainAxisSpacing: 0.50,
                    children: <Widget>[
                      CategoryCard(
                        title: "Diet Recommendation",
                        svgScr: "assets/icons/Hamburger.svg",
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Kegel Exercises",
                        svgScr: "assets/icons/Excrecises.svg",
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Meditation",
                        svgScr: "assets/icons/Meditation.svg",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen()
                            ),
                          );
                        },
                      ),
                      CategoryCard(
                        title: "Yoga",
                        svgScr: "assets/icons/yoga.svg",
                        press: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}