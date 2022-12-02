import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:planets_app/provider/planet_provider.dart';
import 'package:planets_app/ui/homescreen/view/home_screen.dart';
import 'package:planets_app/ui/loginscreen/login_screen.dart';
import 'package:planets_app/ui/planetscreen/view/planet_screen.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PlanetProvider())],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientaion, screenType) {
        return MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            home: LoginScreen());
      },
    );
  }
}


//https://dribbble.com/shots/16423239-Explore-Solar-System-Planets-App/attachments/10620660?mode=media

//todo
/*

page one
	*background: planet image
	*bottom:text 
	*button:go home page 
	
homescreen
	*pageview with planet
	*slider
	*text:
		-Planet Name
		-go to button(planet screen)
planetscreen
	    %50:
		planet name
		planet image
		distance
	    %50:planets info(kayan yazı )
		
 */