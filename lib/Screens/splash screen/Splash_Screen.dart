import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/style.dart';
import '../home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 5),
            ()
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=> Home()));
        }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              'lib/assets/images/logo.png',
            height: 800.h,
            width: double.infinity,
            fit:BoxFit.fill,
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            width:MediaQuery.of(context).size.width-100.h ,
            child: RotatedBox(
              quarterTurns:2,
              child: LinearProgressIndicator(
                minHeight: 2.h,
                color: K.primaryColor,
                backgroundColor: K.mainColor.withOpacity(.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
