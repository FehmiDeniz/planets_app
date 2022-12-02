import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:planets_app/service/planet_service.dart';
import 'package:planets_app/ui/planetscreen/view/planet_screen.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../provider/planet_provider.dart';

class planetView extends StatefulWidget {
  final int root;
  const planetView({super.key, required this.root});

  @override
  State<planetView> createState() => _planetViewState();
}

List<String> planetImages = [
  "assets/pl_mars.png",
  "assets/pl_neptune.png",
  "assets/pl_venus.png",
  "assets/pl_earth.png",
  "assets/pl_jupiter.png",
  "assets/pl_saturn.png",
  "assets/pl_mars.png",
];

List<String> planetNames = [
  "Mars",
  "Neptune",
  "Venus",
  "Earth",
  "Jupiter",
  "Saturn",
  "Venus"
];

class _planetViewState extends State<planetView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          planetNames[widget.root],
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 27.sp),
        ),
        SizedBox(
          height: 3.h,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PlanetScreen(planetValue: planetNames[widget.root]),
                ));
          },
          child: Container(
            width: 100.w,
            height: 60.h,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(planetImages[widget.root]),
              fit: BoxFit.cover,
            )),
          ),
        ),
      ],
    );
  }
}
