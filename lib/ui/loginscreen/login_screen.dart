import 'package:flutter/material.dart';
import 'package:planets_app/ui/homescreen/view/homescreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String exploresolarsystem = 'EXPLORE SOLAR SYSTEM';
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/gif_login.gif"), fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.only(bottom: 12.h, left: 1.6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 35.w,
                child: Text(
                  exploresolarsystem,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.83),
                    fontSize: 23.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  icon: Icon(
                    Icons.forward,
                    color: Colors.white.withOpacity(0.6),
                    size: 10.w,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
