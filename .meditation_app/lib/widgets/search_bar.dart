import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container SearchBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(29.5),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search",
        icon: SvgPicture.asset("assets/icons/search.svg"),
        border: InputBorder.none,
      ),
    ),
  );
}
