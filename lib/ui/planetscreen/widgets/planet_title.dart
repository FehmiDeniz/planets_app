import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlanetTitle extends StatefulWidget {
  const PlanetTitle({super.key});

  @override
  State<PlanetTitle> createState() => _PlanetTitleState();
}

class _PlanetTitleState extends State<PlanetTitle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "MARS",
            style: TextStyle(color: Colors.white, fontSize: 25.sp),
          ),
          Container(
            width: 60.w,
            height: 30.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/pl_mars.png"),
              ),
            ),
          ),
          Text(
            "Distance From Earth",
            style: TextStyle(color: Colors.white, fontSize: 17.sp),
          ),
          Text(
            "1 LIGHT YEAR",
            style: TextStyle(color: Colors.white, fontSize: 17.sp),
          )
        ],
      ),
    );
  }
}
