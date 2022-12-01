import 'package:flutter/material.dart';
import 'package:planets_app/ui/planetscreen/widgets/planet_info.dart';
import 'package:planets_app/ui/planetscreen/widgets/planet_title.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlanetScreen extends StatefulWidget {
  const PlanetScreen({super.key});

  @override
  State<PlanetScreen> createState() => _PlanetScreenState();
}

class _PlanetScreenState extends State<PlanetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040928),
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PlanetTitle(),
              SizedBox(
                height: 3.h,
              ),
              Container(
                width: double.infinity,
                height: 41.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  shrinkWrap: false,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return PlanetInfo();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
