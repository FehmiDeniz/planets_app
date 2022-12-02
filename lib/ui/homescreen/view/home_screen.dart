import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:planets_app/service/planet_service.dart';
import 'package:planets_app/ui/homescreen/widgets/planet_view.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../provider/planet_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String assetBgImage = "assets/im_background.jpg";
    return Scaffold(
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(assetBgImage), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                height: 100.h,
                child: Swiper(
                    itemCount: planetImages.length,
                    autoplay: true,
                    scrollDirection: Axis.vertical,
                    pagination: SwiperPagination(
                      alignment: Alignment.centerRight,
                      builder: SwiperPagination.rect,
                    ),
                    itemBuilder: (context, index) {
                      return planetView(
                        root: index,
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
