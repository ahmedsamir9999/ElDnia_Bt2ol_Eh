


import 'package:eldnia_bt2ol_eh/providers/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Screens/splash screen/Splash_Screen.dart';
import 'module/module.dart';

void main ()
{
  runApp(EldniaBt2olEh());
}



class EldniaBt2olEh extends StatelessWidget {
  const EldniaBt2olEh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(425 , 925),
        builder: (BuildContext,Widget)=> Provider(
          create: (context)
          {
            return NewsProvider() ;
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.dark,
            ),
            home: SplashScreen(),
           // home: ItemModule(title: 'test', description: 'description', imageUrl: 'https://images.unsplash.com/photo-1566438480900-0609be27a4be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=394&q=80'),
          ),
        ));
  }
}
