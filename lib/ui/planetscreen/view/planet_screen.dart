import 'package:flutter/material.dart';
import 'package:planets_app/provider/planet_provider.dart';
import 'package:planets_app/service/planet_service.dart';
import 'package:planets_app/ui/planetscreen/widgets/planet_info.dart';
import 'package:planets_app/ui/planetscreen/widgets/planet_title.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlanetScreen extends StatefulWidget {
  const PlanetScreen(
      {super.key, required this.planetValue, required this.root});
  final int root;
  final String planetValue;

  @override
  State<PlanetScreen> createState() => _PlanetScreenState();
}

class _PlanetScreenState extends State<PlanetScreen> {
  @override
  void initState() {
    Provider.of<PlanetProvider>(context, listen: false)
        .getPlanetData(widget.planetValue);
    print(widget.planetValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040928),
      body: Stack(
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.h),
              child: Consumer(
                builder: (context, PlanetProvider value, child) {
                  return value.isDataIsLoading == false
                      ? Container()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            PlanetTitle(
                              planetName: value.response![0].name!,
                              lightYear: value.response![0].distanceLightYear
                                  .toString(),
                              root: widget.root,
                            ),
                            PlanetInfo(
                              majorData:
                                  value.response![0].semiMajorAxis.toString(),
                              massData: value.response![0].mass.toString(),
                              periodData: value.response![0].period.toString(),
                              temperatureData:
                                  ((value.response![0].temperature!) - 273.15)
                                          .toStringAsFixed(2) +
                                      " ºC",
                            )
                          ],
                        );
                },
              ),
            ),
          ),
          Positioned(
              top: 3.5.h,
              left: 2.h,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.white,
                    size: 25.sp,
                  )))
        ],
      ),
    );
  }
}
