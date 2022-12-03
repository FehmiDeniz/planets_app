import 'package:flutter/material.dart';
import 'package:planets_app/ui/homescreen/widgets/planet_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlanetTitle extends StatefulWidget {
  final String planetName;
  final String lightYear;
  final int root;

  const PlanetTitle(
      {super.key,
      required this.planetName,
      required this.lightYear,
      required this.root});

  @override
  State<PlanetTitle> createState() => _PlanetTitleState();
}

class _PlanetTitleState extends State<PlanetTitle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          widget.planetName,
          style: TextStyle(color: Colors.white, fontSize: 25.sp),
        ),
        Container(
          width: 60.w,
          height: 30.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(planetImages[widget.root]),
            ),
          ),
        ),
        Text(
          "Distance From Earth",
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
        Text(
          "${widget.lightYear} Light Year",
          style: TextStyle(
              color: Colors.white,
              fontSize: 17.sp,
              fontStyle: FontStyle.italic),
        ),
        Text(
          "(1 light year = 9.5 trillion km)",
          style: TextStyle(color: Colors.white, fontSize: 13.7.sp),
        )
      ]),
    );
  }
}
