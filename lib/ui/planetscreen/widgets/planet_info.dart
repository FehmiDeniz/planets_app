import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlanetInfo extends StatefulWidget {
  final String massData;
  final String periodData;
  final String temperatureData;
  final String majorData;

  PlanetInfo({
    super.key,
    required this.massData,
    required this.periodData,
    required this.temperatureData,
    required this.majorData,
  });

  @override
  State<PlanetInfo> createState() => _PlanetInfoState();
}

class _PlanetInfoState extends State<PlanetInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInDown(
          duration: Duration(milliseconds: 500),
          child: planetWid(
            widget: widget,
            title: 'Mass',
            data: widget.massData,
          ),
        ),
        FadeInDown(
          duration: Duration(milliseconds: 700),
          child: planetWid(
            widget: widget,
            title: 'Period',
            data: widget.periodData,
          ),
        ),
        FadeInDown(
          duration: Duration(milliseconds: 900),
          child: planetWid(
            widget: widget,
            title: 'Temperature',
            data: widget.temperatureData,
          ),
        ),
        FadeInDown(
          duration: Duration(milliseconds: 1100),
          child: planetWid(
            widget: widget,
            title: 'Major Axis',
            data: widget.majorData,
          ),
        ),
      ],
    );
  }
}

class planetWid extends StatelessWidget {
  const planetWid({
    Key? key,
    required this.widget,
    required this.title,
    required this.data,
  }) : super(key: key);

  final PlanetInfo widget;
  final String title;
  final String data;

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
              Icons.whatshot,
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
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  data,
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


/*
mass
period
temperature
majoraxis
*/
