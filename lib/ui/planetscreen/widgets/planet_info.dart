import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlanetInfo extends StatefulWidget {
  const PlanetInfo({super.key});

  @override
  State<PlanetInfo> createState() => _PlanetInfoState();
}

class _PlanetInfoState extends State<PlanetInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 83.w,
      height: 8.h,
      decoration: BoxDecoration(
          color: Color(0xff0B194B), borderRadius: BorderRadius.circular(20.w)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.do_not_disturb_on_total_silence_sharp,
              color: Colors.white,
            ), //shape with shadows!!
            SizedBox(
              width: 5.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Average Orbital Speed",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "24.0007 km/s",
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
